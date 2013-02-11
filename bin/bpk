#!/usr/bin/env ruby

require "sshkey"
require "highline/import"

puts "Generating public/private rsa key pair."
default_file_name = File.join(Dir.home, ".ssh", "id_rsa")
file_name = ask("Enter file in which to save the key: ") do |q|
  q.default = default_file_name
end

passphrase = ask("Enter passphrase (empty for no passphrase): ") do |q|
  q.echo = false
  q.verify_match = true
  q.gather = {:password => "", :password_confirmation => ""}
  q.responses[:ask_on_error] = ""
end

unless passphrase.length == 0 || passphrase.length > 4
  puts "passphrase too short: have #{passphrase.length} bytes, need > 4"
  puts "Saving the key failed: #{file_name}."
  exit(-1)
end

file_name = File.expand_path(file_name)

opts = {}
opts.merge!(:passphrase => passphrase) if passphrase.length > 0
begin
  k = SSHKey.generate(opts)
  puts k.randomart
  char = ask('Press "y" if happy, any other key to try again: ') do |q|
    q.character = true
  end
end while char != 'y'

File.open(file_name, 'w') {|f| f.write(k.encrypted_private_key) }
File.open(file_name+".pub", 'w') {|f| f.write(k.ssh_public_key) }

puts "Your identification has been saved in #{file_name}."
puts "Your public key has been saved in #{file_name}.pub."
puts "The key fingerprint is:"
puts k.md5_fingerprint
puts "The key's randomart image is:"
puts k.randomart
