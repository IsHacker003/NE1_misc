.class Lcom/android/settings/localepicker/LocaleListEditor$1;
.super Ljava/lang/Object;
.source "LocaleListEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/localepicker/LocaleListEditor;->showRemoveLocaleWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/localepicker/LocaleListEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/LocaleListEditor;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$1;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 187
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$1;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/localepicker/LocaleListEditor;->access$002(Lcom/android/settings/localepicker/LocaleListEditor;Z)Z

    .line 188
    return-void
.end method
