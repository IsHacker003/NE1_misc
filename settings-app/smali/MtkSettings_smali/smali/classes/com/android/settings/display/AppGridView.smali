.class public Lcom/android/settings/display/AppGridView;
.super Landroid/widget/GridView;
.source "AppGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/AppGridView$ActivityEntry;,
        Lcom/android/settings/display/AppGridView$AppsAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/AppGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/display/AppGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/display/AppGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    const/4 p2, -0x1

    invoke-virtual {p0, p2}, Lcom/android/settings/display/AppGridView;->setNumColumns(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/display/AppGridView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07012d    # @dimen/screen_zoom_preview_app_icon_width '88.0dp'

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 60
    invoke-virtual {p0, p2}, Lcom/android/settings/display/AppGridView;->setColumnWidth(I)V

    .line 62
    new-instance p2, Lcom/android/settings/display/AppGridView$AppsAdapter;

    const p3, 0x7f0d0136    # @layout/screen_zoom_preview_app_icon 'res/layout/screen_zoom_preview_app_icon.xml'

    const p4, 0x1020014    # @android:id/text1

    const v0, 0x1020007    # @android:id/icon1

    invoke-direct {p2, p1, p3, p4, v0}, Lcom/android/settings/display/AppGridView$AppsAdapter;-><init>(Landroid/content/Context;III)V

    invoke-virtual {p0, p2}, Lcom/android/settings/display/AppGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    return-void
.end method
