### Copy in your shuffle method first
def shuffle(some_array)
  original = some_array
  new_array = recursive_shuffle some_array, []
  if some_array == new_array
    shuffle some_array
  end
  new_array
end

def recursive_shuffle(unshuffled_array, shuffled_array)
  if unshuffled_array.length == 0
    shuffled_array
  else
  len = unshuffled_array.length
  random_index = rand(len)
  elem = unshuffled_array.delete_at random_index
  shuffled_array.push elem
  recursive_shuffle unshuffled_array, shuffled_array
  end
end

### Now use it to build your playlist:
my_music = shuffle(Dir['**/*.{MP3,mp3}'])
filename = 'playlist.m3u'
counter = 0
File.open filename, 'w' do |f|
  my_music.each do |music|
    f.write " No." + counter.to_s + ' ' + music
    counter += 1
  end
end
