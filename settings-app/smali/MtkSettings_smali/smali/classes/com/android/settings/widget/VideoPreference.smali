.class public Lcom/android/settings/widget/VideoPreference;
.super Landroid/support/v7/preference/Preference;
.source "VideoPreference.java"


# instance fields
.field mAnimationAvailable:Z

.field private mAspectRadio:F

.field private final mContext:Landroid/content/Context;

.field mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPreviewResource:I

.field private mVideoPath:Landroid/net/Uri;

.field private mVideoPaused:Z

.field private mVideoReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->mAspectRadio:F

    .line 57
    iput-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/settings/R$styleable;->VideoPreference:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 63
    :try_start_0
    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 64
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "android.resource"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 66
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mVideoPath:Landroid/net/Uri;

    .line 68
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mVideoPath:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 69
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    if-lez p1, :cond_0

    .line 70
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/VideoPreference;->setVisible(Z)V

    .line 71
    const v0, 0x7f0d01ca    # @layout/video_preference 'res/layout/video_preference.xml'

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/VideoPreference;->setLayoutResource(I)V

    .line 73
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewResource:I

    .line 76
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/settings/widget/-$$Lambda$VideoPreference$dH8H9UsxsQzXI7GaCcZWWDvTxoU;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/-$$Lambda$VideoPreference$dH8H9UsxsQzXI7GaCcZWWDvTxoU;-><init>(Lcom/android/settings/widget/VideoPreference;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/android/settings/widget/-$$Lambda$VideoPreference$2crRm1Sj4_bqGlDPLY9cVIbC7CU;->INSTANCE:Lcom/android/settings/widget/-$$Lambda$VideoPreference$2crRm1Sj4_bqGlDPLY9cVIbC7CU;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 79
    iput-boolean p1, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationAvailable:Z

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/widget/VideoPreference;->updateAspectRatio()V

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/VideoPreference;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 84
    :catch_0
    move-exception p1

    .line 85
    :try_start_1
    const-string p1, "VideoPreference"

    const-string v0, "Animation resource not found. Will not show animation."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    nop

    .line 89
    return-void

    .line 87
    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method static synthetic access$000(Lcom/android/settings/widget/VideoPreference;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/android/settings/widget/VideoPreference;->mVideoReady:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/widget/VideoPreference;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/android/settings/widget/VideoPreference;->mVideoReady:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/widget/VideoPreference;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/android/settings/widget/VideoPreference;->mVideoPaused:Z

    return p0
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/widget/VideoPreference;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 76
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/widget/VideoPreference;->mVideoReady:Z

    return-void
.end method

.method static synthetic lambda$new$1(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$2(Lcom/android/settings/widget/VideoPreference;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 1

    .line 109
    iget-object p2, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p2, :cond_1

    .line 110
    iget-object p2, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 111
    iget-object p2, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->pause()V

    .line 112
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/widget/VideoPreference;->mVideoPaused:Z

    goto :goto_0

    .line 115
    :cond_0
    iget-object p2, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->start()V

    .line 116
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    iput-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->mVideoPaused:Z

    .line 120
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public isVideoPaused()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->mVideoPaused:Z

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4

    .line 93
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 95
    iget-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationAvailable:Z

    if-nez v0, :cond_0

    .line 96
    return-void

    .line 99
    :cond_0
    const v0, 0x7f0a03ce    # @id/video_texture_view

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    .line 100
    const v1, 0x7f0a03cd    # @id/video_preview_image

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 101
    const v2, 0x7f0a03cc    # @id/video_play_button

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 102
    const v3, 0x7f0a03cb    # @id/video_container

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/AspectRatioFrameLayout;

    .line 105
    iget v3, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewResource:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    iget v3, p0, Lcom/android/settings/widget/VideoPreference;->mAspectRadio:F

    invoke-virtual {p1, v3}, Lcom/android/settings/widget/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 108
    new-instance p1, Lcom/android/settings/widget/-$$Lambda$VideoPreference$n3lVCTPDzJxvnNXXv__BWcO0YKM;

    invoke-direct {p1, p0, v2}, Lcom/android/settings/widget/-$$Lambda$VideoPreference$n3lVCTPDzJxvnNXXv__BWcO0YKM;-><init>(Lcom/android/settings/widget/VideoPreference;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    new-instance p1, Lcom/android/settings/widget/VideoPreference$1;

    invoke-direct {p1, p0, v1, v2}, Lcom/android/settings/widget/VideoPreference$1;-><init>(Lcom/android/settings/widget/VideoPreference;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 161
    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 167
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 168
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 170
    :cond_0
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onDetached()V

    .line 171
    return-void
.end method

.method public onViewInvisible()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 184
    :cond_0
    return-void
.end method

.method public onViewVisible(Z)V
    .locals 1

    .line 174
    iput-boolean p1, p0, Lcom/android/settings/widget/VideoPreference;->mVideoPaused:Z

    .line 175
    iget-boolean p1, p0, Lcom/android/settings/widget/VideoPreference;->mVideoReady:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    .line 176
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 178
    :cond_0
    return-void
.end method

.method updateAspectRatio()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->mAspectRadio:F

    .line 193
    return-void
.end method
