.class Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$1;
.super Ljava/lang/Object;
.source "CustomPreviewSeekBarPreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$1;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 295
    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$1;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    invoke-static {p1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->access$900(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)Lcom/android/settings/widget/LabeledSeekBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/widget/LabeledSeekBar;->getProgress()I

    move-result p1

    .line 296
    if-lez p1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$1;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    invoke-static {v0}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->access$900(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)Lcom/android/settings/widget/LabeledSeekBar;

    move-result-object v0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/widget/LabeledSeekBar;->setProgress(IZ)V

    .line 299
    :cond_0
    return-void
.end method
