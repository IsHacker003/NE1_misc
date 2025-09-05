.class public Lcom/android/settings/accounts/ChooseAccountActivity;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ChooseAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;
    }
.end annotation


# instance fields
.field private mAccountTypeToAuthorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mAccountTypesFilter:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAddAccountGroup:Landroid/support/v7/preference/PreferenceGroup;

.field private mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

.field private mAuthorities:[Ljava/lang/String;

.field private mEnterpriseDisclosurePreference:Lcom/android/settingslib/widget/FooterPreference;

.field private mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

.field private final mProviderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeToAuthDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mUm:Landroid/os/UserManager;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mEnterpriseDisclosurePreference:Lcom/android/settingslib/widget/FooterPreference;

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    .line 78
    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    return-void
.end method

.method private addEnterpriseDisclosure()V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->getDeviceOwnerDisclosure()Ljava/lang/CharSequence;

    move-result-object v0

    .line 227
    if-nez v0, :cond_0

    .line 228
    return-void

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mEnterpriseDisclosurePreference:Lcom/android/settingslib/widget/FooterPreference;

    if-nez v1, :cond_1

    .line 231
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {v1}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mEnterpriseDisclosurePreference:Lcom/android/settingslib/widget/FooterPreference;

    .line 232
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mEnterpriseDisclosurePreference:Lcom/android/settingslib/widget/FooterPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/FooterPreference;->setSelectable(Z)V

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mEnterpriseDisclosurePreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mEnterpriseDisclosurePreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 236
    return-void
.end method

.method private finishWithAccountType(Ljava/lang/String;)V
    .locals 2

    .line 323
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 324
    const-string v1, "selected_account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string p1, "android.intent.extra.USER"

    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 326
    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/accounts/ChooseAccountActivity;->setResult(ILandroid/content/Intent;)V

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    .line 328
    return-void
.end method

.method private onAuthDescriptionsUpdated()V
    .locals 9

    .line 150
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v2, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v1, v2, :cond_7

    .line 151
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v1

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 152
    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 155
    const-string v6, "ChooseAccountActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "accounttype:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " providerName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " packageName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v8, v8, v1

    iget-object v8, v8, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 157
    goto/16 :goto_3

    .line 163
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 164
    nop

    .line 165
    iget-object v7, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    array-length v7, v7

    if-lez v7, :cond_3

    if-eqz v6, :cond_3

    .line 166
    nop

    .line 167
    move v7, v0

    :goto_1
    iget-object v8, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_2

    .line 168
    iget-object v8, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 169
    nop

    .line 170
    goto :goto_2

    .line 167
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 174
    :cond_2
    move v4, v0

    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypesFilter:Ljava/util/HashSet;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypesFilter:Ljava/util/HashSet;

    .line 175
    invoke-virtual {v6, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 176
    nop

    .line 178
    move v4, v0

    :cond_4
    if-eqz v4, :cond_5

    .line 179
    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;

    invoke-direct {v4, v5, v2}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 181
    :cond_5
    const-string v2, "ChooseAccountActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 182
    const-string v2, "ChooseAccountActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipped pref "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": has no authority we need"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 187
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 188
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_9

    .line 191
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    .line 192
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;

    invoke-static {v2}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->access$000(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 191
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfAccountManagementDisabled(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    .line 193
    if-eqz v2, :cond_8

    .line 194
    invoke-static {v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/accounts/ChooseAccountActivity;->setResult(ILandroid/content/Intent;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    goto :goto_4

    .line 198
    :cond_8
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;

    invoke-static {v0}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->access$000(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ChooseAccountActivity;->finishWithAccountType(Ljava/lang/String;)V

    .line 200
    :goto_4
    goto/16 :goto_7

    :cond_9
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 201
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 202
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 203
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;

    .line 204
    invoke-static {v1}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->access$000(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 205
    new-instance v3, Lcom/android/settings/accounts/ProviderPreference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 206
    invoke-static {v1}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->access$000(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->access$100(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v3, v4, v5, v2, v1}, Lcom/android/settings/accounts/ProviderPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 207
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/android/settings/accounts/ProviderPreference;->checkAccountManagementAndSetDisabled(I)V

    .line 208
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 209
    goto :goto_5

    .line 210
    :cond_a
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->addEnterpriseDisclosure()V

    goto :goto_7

    .line 212
    :cond_b
    const-string v1, "ChooseAccountActivity"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    array-length v3, v2

    move v4, v0

    :goto_6
    if-ge v4, v3, :cond_c

    aget-object v5, v2, v4

    .line 215
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 218
    :cond_c
    const-string v2, "ChooseAccountActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No providers found for authorities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_d
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ChooseAccountActivity;->setResult(I)V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    .line 223
    :goto_7
    return-void
.end method

.method private updateAuthDescriptions()V
    .locals 4

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    .line 141
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 140
    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    .line 142
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->onAuthDescriptionsUpdated()V

    .line 146
    return-void
.end method


# virtual methods
.method public getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 240
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 241
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    .line 242
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 241
    invoke-static {v0}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v0

    .line 243
    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 244
    aget-object v3, v0, v1

    .line 245
    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v5, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 246
    if-nez v4, :cond_0

    .line 247
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 248
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_0
    const-string v5, "ChooseAccountActivity"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 251
    const-string v5, "ChooseAccountActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "added authority "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to accountType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_1
    iget-object v3, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method protected getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 267
    nop

    .line 268
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    .line 272
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    .line 274
    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    .line 273
    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    goto :goto_1

    .line 277
    :catch_0
    move-exception v0

    .line 278
    const-string v0, "ChooseAccountActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No icon resource for account type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 275
    :catch_1
    move-exception v0

    .line 276
    const-string v0, "ChooseAccountActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No icon name for account type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    nop

    .line 281
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    .line 282
    return-object v0

    .line 284
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    .line 294
    nop

    .line 295
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    .line 299
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    .line 300
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    goto :goto_1

    .line 303
    :catch_0
    move-exception v0

    .line 304
    const-string v0, "ChooseAccountActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No label resource for account type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 301
    :catch_1
    move-exception v0

    .line 302
    const-string v0, "ChooseAccountActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No label name for account type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    nop

    .line 307
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 106
    const/16 v0, 0xa

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 114
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 115
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    .line 117
    const p1, 0x7f15000e    # @xml/add_account_settings 'res/xml/add_account_settings.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ChooseAccountActivity;->addPreferencesFromResource(I)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "authorities"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "account_types"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 122
    if-eqz p1, :cond_0

    .line 123
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypesFilter:Ljava/util/HashSet;

    .line 124
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 125
    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypesFilter:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mUm:Landroid/os/UserManager;

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mUm:Landroid/os/UserManager;

    const/4 v1, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 130
    invoke-static {p1, v0, v1, v2}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    .line 132
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->updateAuthDescriptions()V

    .line 133
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .line 312
    instance-of v0, p1, Lcom/android/settings/accounts/ProviderPreference;

    if-eqz v0, :cond_1

    .line 313
    check-cast p1, Lcom/android/settings/accounts/ProviderPreference;

    .line 314
    const-string v0, "ChooseAccountActivity"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const-string v0, "ChooseAccountActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to add account of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/ChooseAccountActivity;->finishWithAccountType(Ljava/lang/String;)V

    .line 319
    :cond_1
    const/4 p1, 0x1

    return p1
.end method
