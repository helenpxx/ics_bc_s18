$nesting_length = 0
def log block_description, &some_block
  puts " " * $nesting_length + "Beginning \"" + block_description + "\"..."
  puts " " * $nesting_length + "...\"" + block_description + "\" finished, returning: " + some_block.call.to_s
end

log 'block1' do
  $nesting_length += 1
  log 'block2' do
    $nesting_length += 1
    log 'block2.5' do
      'lots of love'
    end
    1+2+3
  end
  log 'block3' do
    $nesting_length += 1
    "I love thai food!"
  end
   0 == 9
end
