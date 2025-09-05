.class Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$3;
.super Ljava/lang/Object;
.source "CustomPreviewSeekBarPreferenceFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;
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

    .line 390
    iput-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$3;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 394
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 400
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 404
    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$3;->this$0:Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;

    invoke-static {p1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->access$1100(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    const/16 v0, 0x4000

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->sendAccessibilityEvent(I)V

    .line 405
    return-void
.end method
