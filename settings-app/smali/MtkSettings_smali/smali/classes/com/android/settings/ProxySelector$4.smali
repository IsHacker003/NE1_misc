.class Lcom/android/settings/ProxySelector$4;
.super Ljava/lang/Object;
.source "ProxySelector.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ProxySelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ProxySelector;


# direct methods
.method constructor <init>(Lcom/android/settings/ProxySelector;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/android/settings/ProxySelector$4;->this$0:Lcom/android/settings/ProxySelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 270
    if-eqz p2, :cond_0

    .line 271
    check-cast p1, Landroid/widget/TextView;

    .line 272
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Landroid/text/Spannable;

    invoke-static {p1}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 274
    :cond_0
    return-void
.end method
