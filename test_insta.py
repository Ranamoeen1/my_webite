import instaloader
import sys

def test_insta(url):
    L = instaloader.Instaloader()
    try:
        # Extract shortcode from URL
        if "/reel/" in url:
            shortcode = url.split("/reel/")[1].split("/")[0]
        elif "/p/" in url:
            shortcode = url.split("/p/")[1].split("/")[0]
        else:
            print("Unknown URL format")
            return

        print(f"Testing shortcode: {shortcode}")
        post = instaloader.Post.from_shortcode(L.context, shortcode)
        print(f"Video URL: {post.video_url}")
        print(f"Title: {post.caption}")
        print("Success!")
    except Exception as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    test_insta("https://www.instagram.com/reel/DS2Tc0UCLw1/")
