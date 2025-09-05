.class public Lcom/android/setupwizardlib/util/FallbackThemeWrapper;
.super Landroid/view/ContextThemeWrapper;
.source "FallbackThemeWrapper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 44
    return-void
.end method


# virtual methods
.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0

    .line 51
    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 52
    return-void
.end method
