def log block_description, &some_block
  puts "Beginning \"" + block_description + "\"..."
  puts "...\"" + block_description + "\" finished, returning: " + some_block.call.to_s
end

log 'block1' do
  log 'block2' do
    1+2+3
  end
  log 'block3' do
    "I love thai food!"
  end
   0 == 9
end
