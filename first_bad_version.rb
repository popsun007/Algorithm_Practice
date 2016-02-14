# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
  start = 1
  finish = n

  while start + 1 < finish
    mid = start + (finish - start) / 2
    if is_bad_version(mid)
      finish = mid
    else
      start = mid
    end
  end

  if is_bad_version(start)
    return start
  end
  if is_bad_version(finish)
    return finish
  end
end