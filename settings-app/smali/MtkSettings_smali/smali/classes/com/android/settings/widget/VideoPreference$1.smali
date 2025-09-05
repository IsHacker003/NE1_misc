.class Lcom/android/settings/widget/VideoPreference$1;
.super Ljava/lang/Object;
.source "VideoPreference.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/VideoPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/VideoPreference;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$playButton:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/VideoPreference;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    iput-object p2, p0, Lcom/android/settings/widget/VideoPreference$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/settings/widget/VideoPreference$1;->val$playButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 126
    iget-object p2, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    iget-object p2, p2, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p2, :cond_0

    .line 127
    iget-object p2, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    iget-object p2, p2, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 128
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/widget/VideoPreference;->access$002(Lcom/android/settings/widget/VideoPreference;Z)Z

    .line 129
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    iget-object p1, p1, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 131
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 140
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference$1;->val$imageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 136
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 146
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    invoke-static {p1}, Lcom/android/settings/widget/VideoPreference;->access$000(Lcom/android/settings/widget/VideoPreference;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 147
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 148
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    invoke-static {p1}, Lcom/android/settings/widget/VideoPreference;->access$100(Lcom/android/settings/widget/VideoPreference;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    iget-object p1, p1, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    iget-object p1, p1, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_1

    .line 151
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    iget-object p1, p1, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 152
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference$1;->val$playButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    :cond_1
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    iget-object p1, p1, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    iget-object p1, p1, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference$1;->val$playButton:Landroid/widget/ImageView;

    .line 156
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 157
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference$1;->val$playButton:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    :cond_2
    return-void
.end method
