Testing Speed with Ruby Profiler
================================

I built this to compare the processing times of a for each loop and an until loop with Ruby Profiler. 

This code will look up the word "happy" in a dictionary of 10,000 words and return it's spot in the dictionary, first with a for each loop and second with an until loop. 

Call 'ruby -rprofile speedtest.rb' in the lib folder to use the Ruby Profiler to see which methods take the most time. 