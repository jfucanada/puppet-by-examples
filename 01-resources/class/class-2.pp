class example2 {
    notify { 'Class Example 02': }
}

# Including a class with 'class'.
# It can be done once only.

class { 'example2': }

# Error!
#class { 'example2': }

