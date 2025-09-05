.class Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$2;
.super Ljava/lang/Object;
.source "PhysicalKeyboardFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;
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

    .line 219
    iput-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 222
    iget-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {p1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->access$100(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->setShowImeWithHardKeyboard(Z)V

    .line 223
    const/4 p1, 0x1

    return p1
.end method
