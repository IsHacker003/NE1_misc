.class Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;
.super Ljava/lang/Object;
.source "PhysicalKeyboardFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    .line 100
    iget-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {p1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->access$000(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)V

    .line 101
    const/4 p1, 0x1

    return p1
.end method
