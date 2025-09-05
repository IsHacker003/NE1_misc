.class Lcom/android/settings/network/ApnEditor$2;
.super Ljava/lang/Object;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/ApnEditor;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/network/ApnEditor;)V
    .locals 0

    .line 1247
    iput-object p1, p0, Lcom/android/settings/network/ApnEditor$2;->this$0:Lcom/android/settings/network/ApnEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1249
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor$2;->this$0:Lcom/android/settings/network/ApnEditor;

    invoke-virtual {p1}, Lcom/android/settings/network/ApnEditor;->validateAndSaveApnData()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1250
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor$2;->this$0:Lcom/android/settings/network/ApnEditor;

    invoke-virtual {p1}, Lcom/android/settings/network/ApnEditor;->finish()V

    .line 1252
    :cond_0
    return-void
.end method
