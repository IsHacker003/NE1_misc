.class Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;
.super Ljava/lang/Object;
.source "PreviewSeekBarPreferenceFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PreviewSeekBarPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "onPreviewSeekBarChangeListener"
.end annotation


# instance fields
.field private mSeekByTouch:Z

.field final synthetic this$0:Lcom/android/settings/PreviewSeekBarPreferenceFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/PreviewSeekBarPreferenceFragment;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/PreviewSeekBarPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/PreviewSeekBarPreferenceFragment;Lcom/android/settings/PreviewSeekBarPreferenceFragment$1;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;-><init>(Lcom/android/settings/PreviewSeekBarPreferenceFragment;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 70
    iget-object p1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/PreviewSeekBarPreferenceFragment;

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->access$000(Lcom/android/settings/PreviewSeekBarPreferenceFragment;IZ)V

    .line 71
    iget-boolean p1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    if-nez p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/PreviewSeekBarPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->commit()V

    .line 74
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 78
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    .line 79
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 83
    iget-object p1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/PreviewSeekBarPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->access$100(Lcom/android/settings/PreviewSeekBarPreferenceFragment;)Lcom/android/settings/PreviewPagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/PreviewPagerAdapter;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/PreviewSeekBarPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->access$100(Lcom/android/settings/PreviewSeekBarPreferenceFragment;)Lcom/android/settings/PreviewPagerAdapter;

    move-result-object p1

    new-instance v0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$1;

    invoke-direct {v0, p0}, Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$1;-><init>(Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/PreviewPagerAdapter;->setAnimationEndAction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/PreviewSeekBarPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->commit()V

    .line 93
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    .line 94
    return-void
.end method
