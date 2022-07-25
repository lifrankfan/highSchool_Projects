func reverse(_ s:String) -> String {
    if let last = s.last {
        let startIndex = s.startIndex
        let endIndex = s.index(s.endIndex, offsetBy: -1)
        let remaining = String(s[startIndex ..< endIndex])
        return String(last) + reverse(remaining)
    } else {
        return ""
    }
}

print(reverse("frank"))
