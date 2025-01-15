Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BB4A11C93
	for <lists+openipmi-developer@lfdr.de>; Wed, 15 Jan 2025 09:58:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tXzDp-0004Th-4y;
	Wed, 15 Jan 2025 08:57:56 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tzimmermann@suse.de>) id 1tXzDo-0004TX-Kg
 for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Jan 2025 08:57:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EMCMl2NdWdLpUzCjFouuoK5M31G6eERHHjCrpxDNqDA=; b=MhOqTTKJIcuhm1bENTn5qCGAlp
 NsuwJuYiaIIEsbVnhgzeAzjkmwGcczM+Su7P7PIcHfXkS5fh4A1IdDWX1vAyqYLGGFy9VdKgj+U44
 hkPBLWpH1oXQqJSIbGr4HtuE5NRXD/7hFUQ91lLuhcfRgjFTghYUzaQedN1IfcefAlNk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EMCMl2NdWdLpUzCjFouuoK5M31G6eERHHjCrpxDNqDA=; b=Caffk4akQlQLptwHXC1Kf3pYce
 r2YYDnxPykrGxX/0LRIL42jDUUW7GCBDr5IdKD4rEn/CcmCQ67MkPdFpJ1oxFyzgA6aPyi3RDSomt
 DBWJFKH19Uk1cfNZrNO+DNhmBObxmTluBWTWaDxbUNCC+ZoU5/UO7Ti8VW+N6PfDDcH4=;
Received: from smtp-out1.suse.de ([195.135.223.130])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tXzDm-0004X5-7h for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Jan 2025 08:57:55 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id C4F25211FE;
 Wed, 15 Jan 2025 08:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1736931462; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=EMCMl2NdWdLpUzCjFouuoK5M31G6eERHHjCrpxDNqDA=;
 b=bXVbBqQvTHoyS2IffJWHZK1ks7kssd1RCGAkET06cAczFGOOrb61opDPODkQYbLDjWwYs6
 PRA3RVWubxXcjLN/KS3MKYKnumwVzEWGDzjkG95EEJ59Jfaxi5WCaHxQxVHTnPZOfIJlgi
 gXh9J/+8k0r2oCkR+aiIQoeonrr365s=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1736931462;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=EMCMl2NdWdLpUzCjFouuoK5M31G6eERHHjCrpxDNqDA=;
 b=rKD+AQTUnecCiFTNOkPzHkxBrDc0C6JB2bA2V4INXgSzc6CDkTwtFKiX51VoH0Jk13chHD
 5KxBfwhCUGP0csDg==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1736931462; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=EMCMl2NdWdLpUzCjFouuoK5M31G6eERHHjCrpxDNqDA=;
 b=bXVbBqQvTHoyS2IffJWHZK1ks7kssd1RCGAkET06cAczFGOOrb61opDPODkQYbLDjWwYs6
 PRA3RVWubxXcjLN/KS3MKYKnumwVzEWGDzjkG95EEJ59Jfaxi5WCaHxQxVHTnPZOfIJlgi
 gXh9J/+8k0r2oCkR+aiIQoeonrr365s=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1736931462;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=EMCMl2NdWdLpUzCjFouuoK5M31G6eERHHjCrpxDNqDA=;
 b=rKD+AQTUnecCiFTNOkPzHkxBrDc0C6JB2bA2V4INXgSzc6CDkTwtFKiX51VoH0Jk13chHD
 5KxBfwhCUGP0csDg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 5C17813A6F;
 Wed, 15 Jan 2025 08:57:42 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id zdJDFYZ4h2dcDwAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Wed, 15 Jan 2025 08:57:42 +0000
Message-ID: <f365c722-c294-4834-8c84-fd6dcd4a9ee9@suse.de>
Date: Wed, 15 Jan 2025 09:57:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Binbin Zhou <zhoubinbin@loongson.cn>, Binbin Zhou
 <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>,
 Lee Jones <lee@kernel.org>, Corey Minyard <minyard@acm.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>
References: <cover.1735550269.git.zhoubinbin@loongson.cn>
 <b0ac8b81fbb8955ed8ada27aba423cff45aad9f6.1735550269.git.zhoubinbin@loongson.cn>
Content-Language: en-US
From: Thomas Zimmermann <tzimmermann@suse.de>
Autocrypt: addr=tzimmermann@suse.de; keydata=
 xsBNBFs50uABCADEHPidWt974CaxBVbrIBwqcq/WURinJ3+2WlIrKWspiP83vfZKaXhFYsdg
 XH47fDVbPPj+d6tQrw5lPQCyqjwrCPYnq3WlIBnGPJ4/jreTL6V+qfKRDlGLWFjZcsrPJGE0
 BeB5BbqP5erN1qylK9i3gPoQjXGhpBpQYwRrEyQyjuvk+Ev0K1Jc5tVDeJAuau3TGNgah4Yc
 hdHm3bkPjz9EErV85RwvImQ1dptvx6s7xzwXTgGAsaYZsL8WCwDaTuqFa1d1jjlaxg6+tZsB
 9GluwvIhSezPgnEmimZDkGnZRRSFiGP8yjqTjjWuf0bSj5rUnTGiyLyRZRNGcXmu6hjlABEB
 AAHNJ1Rob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPsLAjgQTAQgAOAIb
 AwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftODH
 AAoJEGgNwR1TC3ojx1wH/0hKGWugiqDgLNXLRD/4TfHBEKmxIrmfu9Z5t7vwUKfwhFL6hqvo
 lXPJJKQpQ2z8+X2vZm/slsLn7J1yjrOsoJhKABDi+3QWWSGkaGwRJAdPVVyJMfJRNNNIKwVb
 U6B1BkX2XDKDGffF4TxlOpSQzdtNI/9gleOoUA8+jy8knnDYzjBNOZqLG2FuTdicBXblz0Mf
 vg41gd9kCwYXDnD91rJU8tzylXv03E75NCaTxTM+FBXPmsAVYQ4GYhhgFt8S2UWMoaaABLDe
 7l5FdnLdDEcbmd8uLU2CaG4W2cLrUaI4jz2XbkcPQkqTQ3EB67hYkjiEE6Zy3ggOitiQGcqp
 j//OwE0EWznS4AEIAMYmP4M/V+T5RY5at/g7rUdNsLhWv1APYrh9RQefODYHrNRHUE9eosYb
 T6XMryR9hT8XlGOYRwKWwiQBoWSDiTMo/Xi29jUnn4BXfI2px2DTXwc22LKtLAgTRjP+qbU6
 3Y0xnQN29UGDbYgyyK51DW3H0If2a3JNsheAAK+Xc9baj0LGIc8T9uiEWHBnCH+RdhgATnWW
 GKdDegUR5BkDfDg5O/FISymJBHx2Dyoklv5g4BzkgqTqwmaYzsl8UxZKvbaxq0zbehDda8lv
 hFXodNFMAgTLJlLuDYOGLK2AwbrS3Sp0AEbkpdJBb44qVlGm5bApZouHeJ/+n+7r12+lqdsA
 EQEAAcLAdgQYAQgAIAIbDBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftOH6AAoJEGgNwR1T
 C3ojVSkIALpAPkIJPQoURPb1VWjh34l0HlglmYHvZszJWTXYwavHR8+k6Baa6H7ufXNQtThR
 yIxJrQLW6rV5lm7TjhffEhxVCn37+cg0zZ3j7zIsSS0rx/aMwi6VhFJA5hfn3T0TtrijKP4A
 SAQO9xD1Zk9/61JWk8OysuIh7MXkl0fxbRKWE93XeQBhIJHQfnc+YBLprdnxR446Sh8Wn/2D
 Ya8cavuWf2zrB6cZurs048xe0UbSW5AOSo4V9M0jzYI4nZqTmPxYyXbm30Kvmz0rYVRaitYJ
 4kyYYMhuULvrJDMjZRvaNe52tkKAvMevcGdt38H4KSVXAylqyQOW5zvPc4/sq9c=
In-Reply-To: <b0ac8b81fbb8955ed8ada27aba423cff45aad9f6.1735550269.git.zhoubinbin@loongson.cn>
X-Spam-Score: -2.80
X-Spamd-Result: default: False [-2.80 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 SUSPICIOUS_RECIPS(1.50)[]; NEURAL_HAM_LONG(-1.00)[-1.000];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; FUZZY_BLOCKED(0.00)[rspamd.com];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 FREEMAIL_TO(0.00)[loongson.cn,gmail.com,kernel.org,acm.org,linux.intel.com,ffwll.ch];
 MIME_TRACE(0.00)[0:+]; ARC_NA(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[16]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 RCVD_TLS_ALL(0.00)[]; RCVD_VIA_SMTP_AUTH(0.00)[];
 FROM_EQ_ENVFROM(0.00)[]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; RCVD_COUNT_TWO(0.00)[2];
 TAGGED_RCPT(0.00)[]; MID_RHS_MATCH_FROM(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:mid]
X-Spam-Flag: NO
X-Spam-Level: 
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Hi Am 30.12.24 um 10:31 schrieb Binbin Zhou: > Since the
 display
 is a sub-function of the Loongson-2K BMC, when the > BMC reset, the entire
 BMC PCIe is disconnected, including the display > which is inte [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.223.130 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [195.135.223.130 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [195.135.223.130 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1tXzDm-0004X5-7h
Subject: Re: [Openipmi-developer] [PATCH v1 4/4] drm/ls2kbmc: Add
 Loongson-2K BMC reset function support
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: Chong Qiao <qiaochong@loongson.cn>, Huacai Chen <chenhuacai@kernel.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 loongarch@lists.linux.dev, Xuerui Wang <kernel@xen0n.name>,
 openipmi-developer@lists.sourceforge.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGkKCgpBbSAzMC4xMi4yNCB1bSAxMDozMSBzY2hyaWViIEJpbmJpbiBaaG91Ogo+IFNpbmNlIHRo
ZSBkaXNwbGF5IGlzIGEgc3ViLWZ1bmN0aW9uIG9mIHRoZSBMb29uZ3Nvbi0ySyBCTUMsIHdoZW4g
dGhlCj4gQk1DIHJlc2V0LCB0aGUgZW50aXJlIEJNQyBQQ0llIGlzIGRpc2Nvbm5lY3RlZCwgaW5j
bHVkaW5nIHRoZSBkaXNwbGF5Cj4gd2hpY2ggaXMgaW50ZXJydXB0ZWQuCgpUbyBtZSwgdGhhdCdz
IGEgc3Ryb25nIGluZGljYXRvciB0byBzZXQgdXAgdGhlIGVudGlyZSB0aGluZyBmcm9tIHNjcmF0
Y2guCgo+Cj4gTm90IG9ubHkgZG8geW91IG5lZWQgdG8gc2F2ZS9yZXN0b3JlIHRoZSByZWxldmFu
dCBQQ0llIHJlZ2lzdGVycwo+IHRocm91Z2hvdXQgdGhlIHJlc2V0IHByb2Nlc3MsIGJ1dCB5b3Ug
YWxzbyBuZWVkIHRvIHJlLXB1c2ggdGhlIGRpc3BsYXkKPiB0byB0aGUgbW9uaXRvciBhdCB0aGUg
ZW5kLgo+Cj4gQ28tZGV2ZWxvcGVkLWJ5OiBDaG9uZyBRaWFvIDxxaWFvY2hvbmdAbG9vbmdzb24u
Y24+Cj4gU2lnbmVkLW9mZi1ieTogQ2hvbmcgUWlhbyA8cWlhb2Nob25nQGxvb25nc29uLmNuPgo+
IFNpZ25lZC1vZmYtYnk6IEJpbmJpbiBaaG91IDx6aG91YmluYmluQGxvb25nc29uLmNuPgo+IC0t
LQo+ICAgZHJpdmVycy9ncHUvZHJtL3RpbnkvbHMya2JtYy5jIHwgMjg0ICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDI4MyBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3RpbnkvbHMy
a2JtYy5jIGIvZHJpdmVycy9ncHUvZHJtL3RpbnkvbHMya2JtYy5jCj4gaW5kZXggOTA5ZDZjNjg3
MTkzLi40YjQ0MGYyMGNiNGQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3RpbnkvbHMy
a2JtYy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3RpbnkvbHMya2JtYy5jCgpNb3ZlIGFsbCB0
aGUgcmVzZXQgZGV0ZWN0aW9uIGludG8gdGhlIEJNQyBjb3JlIGRyaXZlci4gV2hlbiB5b3Ugc2Vl
IGEgCnJlc2V0LCByZW1vdmUgdGhlIGRpc3BsYXkncyBwbGF0Zm9ybSBkZXZpY2UgdmlhIApwbGF0
Zm9ybV9kZXZpY2VfdW5yZWdpc3RlcigpLiBUaGlzIHdpbGwgcmVsZWFzZSB0aGUgZGV2aWNlwqAg
YW5kIHRoZSBEUk0gCmRyaXZlciBvbiB0b3AuIFdlIGRvIHRoaXMgZm9yIHNpbXBsZWRybS9lZmlm
Yi9ldGMuIEhlbmNlIHVzZXItc3BhY2UgY29kZSAKaXMgYWJsZSB0byBkZWFsIHdpdGggaXQuIFRo
ZW4gc2V0IHVwIGEgbmV3IHBsYXRmb3JtIGRldmljZSB3aGVuIHRoZSBuZXcgCmZyYW1lYnVmZmVy
IGlzIGF2YWlsYWJsZS4gWW91ciBEUk0gZHJpdmVyIHdpbGwgYmluZCB0byBpdCBhbmQgdXNlci1z
cGFjZSAKY29kZSB3aWxsIGNvbnRpbnVlIHdpdGggdGhlIG5ldyBEUk0gZGV2aWNlLgoKQmVzdCBy
ZWdhcmRzClRob21hcwoKPiBAQCAtOCwxMCArOCwxMiBAQAo+ICAgICovCj4gICAKPiAgICNpbmNs
dWRlIDxsaW51eC9hcGVydHVyZS5oPgo+ICsjaW5jbHVkZSA8bGludXgvZGVsYXkuaD4KPiAgICNp
bmNsdWRlIDxsaW51eC9taW5tYXguaD4KPiAgICNpbmNsdWRlIDxsaW51eC9wY2kuaD4KPiAgICNp
bmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kYXRhL3NpbXBsZWZiLmg+Cj4gICAjaW5jbHVkZSA8bGlu
dXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9zdG9wX21hY2hpbmUuaD4K
PiAgIAo+ICAgI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljLmg+Cj4gICAjaW5jbHVkZSA8ZHJtL2Ry
bV9hdG9taWNfc3RhdGVfaGVscGVyLmg+Cj4gQEAgLTMyLDkgKzM0LDI3IEBACj4gICAjaW5jbHVk
ZSA8ZHJtL2RybV9wYW5pYy5oPgo+ICAgI2luY2x1ZGUgPGRybS9kcm1fcHJvYmVfaGVscGVyLmg+
Cj4gICAKPiArI2RlZmluZSBCTUNfUkVTRVRfREVMQVkJKDYwICogSFopCj4gKyNkZWZpbmUgQk1D
X1JFU0VUX1dBSVQJMTAwMDAKPiArCj4gK3N0YXRpYyBjb25zdCB1MzIgaW5kZXhbXSA9IHsgMHg0
LCAweDEwLCAweDE0LCAweDE4LCAweDFjLCAweDIwLCAweDI0LAo+ICsJCQkgICAgIDB4MzAsIDB4
M2MsIDB4NTQsIDB4NTgsIDB4NzgsIDB4N2MsIDB4ODAgfTsKPiArc3RhdGljIGNvbnN0IHUzMiBj
aW5kZXhbXSA9IHsgMHg0LCAweDEwLCAweDNjIH07Cj4gKwo+ICtzdHJ1Y3QgbHMya2JtY19wY2lf
ZGF0YSB7Cj4gKwl1MzIgZDgwYzsKPiArCXUzMiBkNzFjOwo+ICsJdTMyIGRhdGFbMTRdOwo+ICsJ
dTMyIGNkYXRhWzNdOwo+ICt9Owo+ICsKPiAgIHN0cnVjdCBsczJrYm1jX3BkYXRhIHsKPiAgIAlz
dHJ1Y3QgcGNpX2RldiAqcGRldjsKPiArCXN0cnVjdCBkcm1fZGV2aWNlICpkZGV2Owo+ICsJc3Ry
dWN0IHdvcmtfc3RydWN0IGJtY193b3JrOwo+ICsJdW5zaWduZWQgbG9uZyByZXNldF90aW1lOwo+
ICAgCXN0cnVjdCBzaW1wbGVmYl9wbGF0Zm9ybV9kYXRhIHBkOwo+ICsJc3RydWN0IGxzMmtibWNf
cGNpX2RhdGEgcGNpX2RhdGE7Cj4gICB9Owo+ICAgCj4gICAvKgo+IEBAIC01ODMsNiArNjAzLDI2
NSBAQCBzdGF0aWMgc3RydWN0IGxzMmtibWNfZGV2aWNlICpsczJrYm1jX2RldmljZV9jcmVhdGUo
c3RydWN0IGRybV9kcml2ZXIgKmRydiwKPiAgIAlyZXR1cm4gc2RldjsKPiAgIH0KPiAgIAo+ICtz
dGF0aWMgYm9vbCBsczJrYm1jX2JhcjBfYWRkcl9pc19zZXQoc3RydWN0IHBjaV9kZXYgKnBwZGV2
KQo+ICt7Cj4gKwl1MzIgYWRkcjsKPiArCj4gKwlwY2lfcmVhZF9jb25maWdfZHdvcmQocHBkZXYs
IFBDSV9CQVNFX0FERFJFU1NfMCwgJmFkZHIpOwo+ICsJYWRkciAmPSBQQ0lfQkFTRV9BRERSRVNT
X01FTV9NQVNLOwo+ICsKPiArCXJldHVybiBhZGRyID8gdHJ1ZSA6IGZhbHNlOwo+ICt9Cj4gKwo+
ICtzdGF0aWMgdm9pZCBsczJrYm1jX3NhdmVfcGNpX2RhdGEoc3RydWN0IGxzMmtibWNfcGRhdGEg
KnByaXYpCj4gK3sKPiArCXN0cnVjdCBwY2lfZGV2ICpwZGV2ID0gcHJpdi0+cGRldjsKPiArCXN0
cnVjdCBwY2lfZGV2ICpwYXJlbnQgPSBwZGV2LT5idXMtPnNlbGY7Cj4gKwlpbnQgaTsKPiArCj4g
Kwlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShpbmRleCk7IGkrKykKPiArCQlwY2lfcmVhZF9j
b25maWdfZHdvcmQocGFyZW50LCBpbmRleFtpXSwgJnByaXYtPnBjaV9kYXRhLmRhdGFbaV0pOwo+
ICsKPiArCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGNpbmRleCk7IGkrKykKPiArCQlwY2lf
cmVhZF9jb25maWdfZHdvcmQocGRldiwgY2luZGV4W2ldLCAmcHJpdi0+cGNpX2RhdGEuY2RhdGFb
aV0pOwo+ICsKPiArCXBjaV9yZWFkX2NvbmZpZ19kd29yZChwYXJlbnQsIDB4ODBjLCAmcHJpdi0+
cGNpX2RhdGEuZDgwYyk7Cj4gKwlwcml2LT5wY2lfZGF0YS5kODBjID0gKHByaXYtPnBjaV9kYXRh
LmQ4MGMgJiB+KDMgPDwgMTcpKSB8ICgxIDw8IDE3KTsKPiArCj4gKwlwY2lfcmVhZF9jb25maWdf
ZHdvcmQocGFyZW50LCAweDcxYywgJnByaXYtPnBjaV9kYXRhLmQ3MWMpOwo+ICsJcHJpdi0+cGNp
X2RhdGEuZDcxYyB8PSAxIDw8IDI2Owo+ICt9Cj4gKwo+ICtzdGF0aWMgYm9vbCBsczJrYm1jX2No
ZWNrX3BjaWVfY29ubmVjdGVkKHN0cnVjdCBwY2lfZGV2ICpwYXJlbnQsIHN0cnVjdCBkcm1fZGV2
aWNlICpkZXYpCj4gK3sKPiArCXZvaWQgX19pb21lbSAqbW1pbzsKPiArCWludCBzdHMsIHRpbWVv
dXQgPSAxMDAwMDsKPiArCj4gKwltbWlvID0gcGNpX2lvbWFwKHBhcmVudCwgMCwgMHgxMDApOwo+
ICsJaWYgKCFtbWlvKQo+ICsJCXJldHVybiBmYWxzZTsKPiArCj4gKwl3cml0ZWwocmVhZGwobW1p
bykgfCAweDgsIG1taW8pOwo+ICsJd2hpbGUgKHRpbWVvdXQpIHsKPiArCQlzdHMgPSByZWFkbCht
bWlvICsgMHhjKTsKPiArCQlpZiAoKHN0cyAmIDB4MTEpID09IDB4MTEpCj4gKwkJCWJyZWFrOwo+
ICsJCW1kZWxheSgxKTsKPiArCQl0aW1lb3V0LS07Cj4gKwl9Cj4gKwo+ICsJcGNpX2lvdW5tYXAo
cGFyZW50LCBtbWlvKTsKPiArCj4gKwlpZiAoIXRpbWVvdXQpIHsKPiArCQlkcm1fZXJyKGRldiwg
InBjaWUgdHJhaW4gZmFpbGVkIHN0YXR1cz0weCV4XG4iLCBzdHMpOwo+ICsJCXJldHVybiBmYWxz
ZTsKPiArCX0KPiArCj4gKwlyZXR1cm4gdHJ1ZTsKPiArfQo+ICsKPiArc3RhdGljIGludCBsczJr
Ym1jX3JlY292ZV9wY2lfZGF0YSh2b2lkICpkYXRhKQo+ICt7Cj4gKwlzdHJ1Y3QgbHMya2JtY19w
ZGF0YSAqcHJpdiA9IGRhdGE7Cj4gKwlzdHJ1Y3QgcGNpX2RldiAqcGRldiA9IHByaXYtPnBkZXY7
Cj4gKwlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gcHJpdi0+ZGRldjsKPiArCXN0cnVjdCBwY2lf
ZGV2ICpwYXJlbnQgPSBwZGV2LT5idXMtPnNlbGY7Cj4gKwl1MzIgaSwgdGltZW91dCwgcmV0cnkg
PSAwOwo+ICsJYm9vbCByZWFkeTsKPiArCj4gKwlwY2lfd3JpdGVfY29uZmlnX2R3b3JkKHBhcmVu
dCwgUENJX0JBU0VfQUREUkVTU18yLCAwKTsKPiArCXBjaV93cml0ZV9jb25maWdfZHdvcmQocGFy
ZW50LCBQQ0lfQkFTRV9BRERSRVNTXzMsIDApOwo+ICsJcGNpX3dyaXRlX2NvbmZpZ19kd29yZChw
YXJlbnQsIFBDSV9CQVNFX0FERFJFU1NfNCwgMCk7Cj4gKwo+ICsJdGltZW91dCA9IDEwMDAwOwo+
ICsJd2hpbGUgKHRpbWVvdXQpIHsKPiArCQlyZWFkeSA9IGxzMmtibWNfYmFyMF9hZGRyX2lzX3Nl
dChwYXJlbnQpOwo+ICsJCWlmICghcmVhZHkpCj4gKwkJCWJyZWFrOwo+ICsJCW1kZWxheSgxKTsK
PiArCQl0aW1lb3V0LS07Cj4gKwl9Owo+ICsKPiArCWlmICghdGltZW91dCkKPiArCQlkcm1fd2Fy
bihkZXYsICJiYXIgbm90IGNsZWFyIDBcbiIpOwo+ICsKPiArcmV0cmFpbjoKPiArCWZvciAoaSA9
IDA7IGkgPCBBUlJBWV9TSVpFKGluZGV4KTsgaSsrKQo+ICsJCXBjaV93cml0ZV9jb25maWdfZHdv
cmQocGFyZW50LCBpbmRleFtpXSwgcHJpdi0+cGNpX2RhdGEuZGF0YVtpXSk7Cj4gKwo+ICsJcGNp
X3dyaXRlX2NvbmZpZ19kd29yZChwYXJlbnQsIDB4ODBjLCBwcml2LT5wY2lfZGF0YS5kODBjKTsK
PiArCXBjaV93cml0ZV9jb25maWdfZHdvcmQocGFyZW50LCAweDcxYywgcHJpdi0+cGNpX2RhdGEu
ZDcxYyk7Cj4gKwo+ICsJLyogQ2hlY2sgaWYgdGhlIHBjaWUgaXMgY29ubmVjdGVkICovCj4gKwly
ZWFkeSA9IGxzMmtibWNfY2hlY2tfcGNpZV9jb25uZWN0ZWQocGFyZW50LCBkZXYpOwo+ICsJaWYg
KCFyZWFkeSkKPiArCQlyZXR1cm4gcmVhZHk7Cj4gKwo+ICsJZm9yIChpID0gMDsgaSA8IEFSUkFZ
X1NJWkUoY2luZGV4KTsgaSsrKQo+ICsJCXBjaV93cml0ZV9jb25maWdfZHdvcmQocGRldiwgY2lu
ZGV4W2ldLCBwcml2LT5wY2lfZGF0YS5jZGF0YVtpXSk7Cj4gKwo+ICsJZHJtX2luZm8oZGV2LCAi
cGNpZSByZWNvdmVyZWQgZG9uZVxuIik7Cj4gKwo+ICsJaWYgKCFyZXRyeSkgewo+ICsJCS8qd2Fp
dCB1LWJvb3QgZGRyIGNvbmZpZyAqLwo+ICsJCW1kZWxheShCTUNfUkVTRVRfV0FJVCk7Cj4gKwkJ
cmVhZHkgPSBsczJrYm1jX2JhcjBfYWRkcl9pc19zZXQocGFyZW50KTsKPiArCQlpZiAoIXJlYWR5
KSB7Cj4gKwkJCXJldHJ5ID0gMTsKPiArCQkJZ290byByZXRyYWluOwo+ICsJCX0KPiArCX0KPiAr
Cj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiArc3RhdGljIGludCBsczJrYm1jX3B1c2hfZHJtX21v
ZGUoc3RydWN0IGRybV9kZXZpY2UgKmRldikKPiArewo+ICsJc3RydWN0IGxzMmtibWNfZGV2aWNl
ICpzZGV2ID0gbHMya2JtY19kZXZpY2Vfb2ZfZGV2KGRldik7Cj4gKwlzdHJ1Y3QgZHJtX2NydGMg
KmNydGMgPSAmc2Rldi0+Y3J0YzsKPiArCXN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lID0gY3J0Yy0+
cHJpbWFyeTsKPiArCXN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IgPSAmc2Rldi0+Y29u
bmVjdG9yOwo+ICsJc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIgPSBOVUxMOwo+ICsJc3RydWN0
IGRybV9tb2RlX3NldCBzZXQ7Cj4gKwlzdHJ1Y3QgZHJtX21vZGVzZXRfYWNxdWlyZV9jdHggY3R4
Owo+ICsJaW50IHJldDsKPiArCj4gKwltdXRleF9sb2NrKCZkZXYtPm1vZGVfY29uZmlnLm11dGV4
KTsKPiArCWNvbm5lY3Rvci0+ZnVuY3MtPmZpbGxfbW9kZXMoY29ubmVjdG9yLCA0MDk2LCA0MDk2
KTsKPiArCW11dGV4X3VubG9jaygmZGV2LT5tb2RlX2NvbmZpZy5tdXRleCk7Cj4gKwo+ICsJRFJN
X01PREVTRVRfTE9DS19BTExfQkVHSU4oZGV2LCBjdHgsCj4gKwkJCQkgICBEUk1fTU9ERVNFVF9B
Q1FVSVJFX0lOVEVSUlVQVElCTEUsIHJldCk7Cj4gKwo+ICsJaWYgKHBsYW5lLT5zdGF0ZSkKPiAr
CQlmYiA9IHBsYW5lLT5zdGF0ZS0+ZmI7Cj4gKwllbHNlCj4gKwkJZmIgPSBwbGFuZS0+ZmI7Cj4g
Kwo+ICsJaWYgKCFmYikgewo+ICsJCWRybV9kYmcoZGV2LCAiQ1JUQyBkb2Vzbid0IGhhdmUgY3Vy
cmVudCBGQlxuIik7Cj4gKwkJcmV0ID0gLUVJTlZBTDsKPiArCQlnb3RvIG91dDsKPiArCX0KPiAr
Cj4gKwlkcm1fZnJhbWVidWZmZXJfZ2V0KGZiKTsKPiArCj4gKwlzZXQuY3J0YyA9IGNydGM7Cj4g
KwlzZXQueCA9IDA7Cj4gKwlzZXQueSA9IDA7Cj4gKwlzZXQubW9kZSA9ICZzZGV2LT5tb2RlOwo+
ICsJc2V0LmNvbm5lY3RvcnMgPSAmY29ubmVjdG9yOwo+ICsJc2V0Lm51bV9jb25uZWN0b3JzID0g
MTsKPiArCXNldC5mYiA9IGZiOwo+ICsKPiArCXJldCA9IGNydGMtPmZ1bmNzLT5zZXRfY29uZmln
KCZzZXQsICZjdHgpOwo+ICsKPiArb3V0Ogo+ICsJRFJNX01PREVTRVRfTE9DS19BTExfRU5EKGRl
diwgY3R4LCByZXQpOwo+ICsKPiArCXJldHVybiByZXQ7Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lk
IGxzMmtibWNfZXZlbnRzX2ZuKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKPiArewo+ICsJc3Ry
dWN0IGxzMmtibWNfcGRhdGEgKnByaXYgPSBjb250YWluZXJfb2Yod29yaywgc3RydWN0IGxzMmti
bWNfcGRhdGEsIGJtY193b3JrKTsKPiArCj4gKwkvKgo+ICsJICogVGhlIHBjaWUgaXMgbG9zdCB3
aGVuIHRoZSBCTUMgcmVzZXRzLAo+ICsJICogYXQgd2hpY2ggcG9pbnQgYWNjZXNzIHRvIHRoZSBw
Y2llIGZyb20gb3RoZXIgQ1BVcwo+ICsJICogaXMgc3VzcGVuZGVkIHRvIHByZXZlbnQgYSBjcmFz
aC4KPiArCSAqLwo+ICsJc3RvcF9tYWNoaW5lKGxzMmtibWNfcmVjb3ZlX3BjaV9kYXRhLCBwcml2
LCBOVUxMKTsKPiArCj4gKwlkcm1faW5mbyhwcml2LT5kZGV2LCAicmVkcmF3IGNvbnNvbGVcbiIp
Owo+ICsKPiArCS8qIFdlIG5lZWQgdG8gcmUtcHVzaCB0aGUgZGlzcGxheSBkdWUgdG8gcHJldmlv
dXMgcGNpZSBsb3NzLiAqLwo+ICsJbHMya2JtY19wdXNoX2RybV9tb2RlKHByaXYtPmRkZXYpOwo+
ICt9Cj4gKwo+ICtzdGF0aWMgaXJxcmV0dXJuX3QgbHMya2JtY19pbnRlcnJ1cHQoaW50IGlycSwg
dm9pZCAqYXJnKQo+ICt7Cj4gKwlzdHJ1Y3QgbHMya2JtY19wZGF0YSAqcHJpdiA9IGFyZzsKPiAr
Cj4gKwlpZiAoc3lzdGVtX3N0YXRlICE9IFNZU1RFTV9SVU5OSU5HKQo+ICsJCXJldHVybiBJUlFf
SEFORExFRDsKPiArCj4gKwkvKiBza2lwIGludGVycnVwdCBpbiBCTUNfUkVTRVRfREVMQVkgKi8K
PiArCWlmICh0aW1lX2FmdGVyKGppZmZpZXMsIHByaXYtPnJlc2V0X3RpbWUgKyBCTUNfUkVTRVRf
REVMQVkpKQo+ICsJCXNjaGVkdWxlX3dvcmsoJnByaXYtPmJtY193b3JrKTsKPiArCj4gKwlwcml2
LT5yZXNldF90aW1lID0gamlmZmllczsKPiArCj4gKwlyZXR1cm4gSVJRX0hBTkRMRUQ7Cj4gK30K
PiArCj4gKyNkZWZpbmUgQk1DX1JFU0VUX0dQSU8JCQkxNAo+ICsjZGVmaW5lIExPT05HU09OX0dQ
SU9fUkVHX0JBU0UJCTB4MWZlMDA1MDAKPiArI2RlZmluZSBMT09OR1NPTl9HUElPX1JFR19TSVpF
CQkweDE4Cj4gKyNkZWZpbmUgTE9PTkdTT05fR1BJT19PRU4JCTB4MAo+ICsjZGVmaW5lIExPT05H
U09OX0dQSU9fRlVOQwkJMHg0Cj4gKyNkZWZpbmUgTE9PTkdTT05fR1BJT19JTlRQT0wJCTB4MTAK
PiArI2RlZmluZSBMT09OR1NPTl9HUElPX0lOVEVOCQkweDE0Cj4gKwo+ICsvKiBUaGUgZ3BpbyBp
bnRlcnJ1cHQgaXMgYSB3YXRjaGRvZyBpbnRlcnJ1cHQgdGhhdCBpcyB0cmlnZ2VyZWQgd2hlbiB0
aGUgQk1DIHJlc2V0cy4gKi8KPiArc3RhdGljIGludCBsczJrYm1jX2dwaW9fcmVzZXRfaGFuZGxl
cihzdHJ1Y3QgbHMya2JtY19wZGF0YSAqcHJpdikKPiArewo+ICsJaW50IGlycSwgcmV0ID0gMDsK
PiArCWludCBnc2kgPSAxNiArIChCTUNfUkVTRVRfR1BJTyAmIDcpOwo+ICsJdm9pZCBfX2lvbWVt
ICpncGlvX2Jhc2U7Cj4gKwo+ICsJLyogU2luY2UgTG9vbmdzb24tM0EgaGFyZHdhcmUgZG9lcyBu
b3Qgc3VwcG9ydCBHUElPIGludGVycnVwdCBjYXNjYWRlLAo+ICsJICogY2hpcC0+Z3Bpb190b19p
cnEoKSBjYW5ub3QgYmUgaW1wbGVtZW50ZWQsCj4gKwkgKiBoZXJlIGFjcGlfcmVnaXN0ZXJfZ3Np
KCkgaXMgdXNlZCB0byBnZXQgZ3BpbyBpcnEuCj4gKwkgKi8KPiArCWlycSA9IGFjcGlfcmVnaXN0
ZXJfZ3NpKE5VTEwsIGdzaSwgQUNQSV9FREdFX1NFTlNJVElWRSwgQUNQSV9BQ1RJVkVfTE9XKTsK
PiArCWlmIChpcnEgPCAwKQo+ICsJCXJldHVybiBpcnE7Cj4gKwo+ICsJZ3Bpb19iYXNlID0gaW9y
ZW1hcChMT09OR1NPTl9HUElPX1JFR19CQVNFLCBMT09OR1NPTl9HUElPX1JFR19TSVpFKTsKPiAr
CWlmICghZ3Bpb19iYXNlKSB7Cj4gKwkJYWNwaV91bnJlZ2lzdGVyX2dzaShnc2kpOwo+ICsJCXJl
dHVybiBQVFJfRVJSKGdwaW9fYmFzZSk7Cj4gKwl9Cj4gKwo+ICsJd3JpdGVsKHJlYWRsKGdwaW9f
YmFzZSArIExPT05HU09OX0dQSU9fT0VOKSB8IEJJVChCTUNfUkVTRVRfR1BJTyksCj4gKwkgICAg
ICAgZ3Bpb19iYXNlICsgTE9PTkdTT05fR1BJT19PRU4pOwo+ICsJd3JpdGVsKHJlYWRsKGdwaW9f
YmFzZSArIExPT05HU09OX0dQSU9fRlVOQykgJiB+QklUKEJNQ19SRVNFVF9HUElPKSwKPiArCSAg
ICAgICBncGlvX2Jhc2UgKyBMT09OR1NPTl9HUElPX0ZVTkMpOwo+ICsJd3JpdGVsKHJlYWRsKGdw
aW9fYmFzZSArIExPT05HU09OX0dQSU9fSU5UUE9MKSAmIH5CSVQoQk1DX1JFU0VUX0dQSU8pLAo+
ICsJICAgICAgIGdwaW9fYmFzZSArIExPT05HU09OX0dQSU9fSU5UUE9MKTsKPiArCXdyaXRlbChy
ZWFkbChncGlvX2Jhc2UgKyBMT09OR1NPTl9HUElPX0lOVEVOKSB8IEJJVChCTUNfUkVTRVRfR1BJ
TyksCj4gKwkgICAgICAgZ3Bpb19iYXNlICsgTE9PTkdTT05fR1BJT19JTlRFTik7Cj4gKwo+ICsJ
cmV0ID0gcmVxdWVzdF9pcnEoaXJxLCBsczJrYm1jX2ludGVycnVwdCwgSVJRRl9TSEFSRUQgfCBJ
UlFGX1RSSUdHRVJfRkFMTElORywKPiArCQkJICAibHMya2JtYyBncGlvIiwgcHJpdik7Cj4gKwo+
ICsJYWNwaV91bnJlZ2lzdGVyX2dzaShnc2kpOwo+ICsJaW91bm1hcChncGlvX2Jhc2UpOwo+ICsK
PiArCXJldHVybiByZXQ7Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgbHMya2JtY19wZGF0YV9pbml0
aWFsKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYsIHN0cnVjdCBsczJrYm1jX3BkYXRhICpw
cml2KQo+ICt7Cj4gKwlpbnQgcmV0Owo+ICsKPiArCXByaXYtPnBkZXYgPSAqKHN0cnVjdCBwY2lf
ZGV2ICoqKWRldl9nZXRfcGxhdGRhdGEoJnBkZXYtPmRldik7Cj4gKwo+ICsJbHMya2JtY19zYXZl
X3BjaV9kYXRhKHByaXYpOwo+ICsKPiArCUlOSVRfV09SSygmcHJpdi0+Ym1jX3dvcmssIGxzMmti
bWNfZXZlbnRzX2ZuKTsKPiArCj4gKwlyZXQgPSByZXF1ZXN0X2lycShwcml2LT5wZGV2LT5pcnEs
IGxzMmtibWNfaW50ZXJydXB0LAo+ICsJCQkgIElSUUZfU0hBUkVEIHwgSVJRRl9UUklHR0VSX1JJ
U0lORywgImxzMmtibWMgcGNpZSIsIHByaXYpOwo+ICsJaWYgKHJldCkgewo+ICsJCXByX2Vycigi
cmVxdWVzdF9pcnEoJWQpIGZhaWxlZFxuIiwgcHJpdi0+cGRldi0+aXJxKTsKPiArCQlyZXR1cm4g
cmV0Owo+ICsJfQo+ICsKPiArCXJldHVybiBsczJrYm1jX2dwaW9fcmVzZXRfaGFuZGxlcihwcml2
KTsKPiArfQo+ICsKPiAgIC8qCj4gICAgKiBQbGF0Zm9ybSBkcml2ZXIKPiAgICAqLwo+IEBAIC01
OTgsMTIgKzg3NywxNSBAQCBzdGF0aWMgaW50IGxzMmtibWNfcHJvYmUoc3RydWN0IHBsYXRmb3Jt
X2RldmljZSAqcGRldikKPiAgIAlpZiAoSVNfRVJSKHByaXYpKQo+ICAgCQlyZXR1cm4gLUVOT01F
TTsKPiAgIAo+IC0JcHJpdi0+cGRldiA9ICooc3RydWN0IHBjaV9kZXYgKiopZGV2X2dldF9wbGF0
ZGF0YSgmcGRldi0+ZGV2KTsKPiArCXJldCA9IGxzMmtibWNfcGRhdGFfaW5pdGlhbChwZGV2LCBw
cml2KTsKPiArCWlmIChyZXQpCj4gKwkJcmV0dXJuIHJldDsKPiAgIAo+ICAgCXNkZXYgPSBsczJr
Ym1jX2RldmljZV9jcmVhdGUoJmxzMmtibWNfZHJpdmVyLCBwZGV2LCBwcml2KTsKPiAgIAlpZiAo
SVNfRVJSKHNkZXYpKQo+ICAgCQlyZXR1cm4gUFRSX0VSUihzZGV2KTsKPiAgIAlkZXYgPSAmc2Rl
di0+ZGV2Owo+ICsJcHJpdi0+ZGRldiA9ICZzZGV2LT5kZXY7Cj4gICAKPiAgIAlyZXQgPSBkcm1f
ZGV2X3JlZ2lzdGVyKGRldiwgMCk7Cj4gICAJaWYgKHJldCkKCi0tIAotLQpUaG9tYXMgWmltbWVy
bWFubgpHcmFwaGljcyBEcml2ZXIgRGV2ZWxvcGVyClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdl
cm1hbnkgR21iSApGcmFua2Vuc3RyYXNzZSAxNDYsIDkwNDYxIE51ZXJuYmVyZywgR2VybWFueQpH
RjogSXZvIFRvdGV2LCBBbmRyZXcgTXllcnMsIEFuZHJldyBNY0RvbmFsZCwgQm91ZGllbiBNb2Vy
bWFuCkhSQiAzNjgwOSAoQUcgTnVlcm5iZXJnKQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9w
ZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
