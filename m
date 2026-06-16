Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id U3lnChleMWqmiAUAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 16 Jun 2026 16:30:49 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B20669081A
	for <lists+openipmi-developer@lfdr.de>; Tue, 16 Jun 2026 16:30:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=MnpGKa9v;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=fG6y4+4a;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b="k qtF9V9";
	dkim=fail ("body hash did not verify") header.d=baylibre.com header.s=google header.b=p08KhLjw;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=O2Cj3hWniHRqYqrKAp2FCPccwjtxELgov40F3XDYdJ8=; b=MnpGKa9vZa2b7tBmqSqCn+4kzs
	syB9ozNOdmoVbLuOhhty2C3/YdedDWCMTA4EU0r548Ct1RQJY+cSeWF40kq9vgMWYSHjveNFPhr/D
	wkuTC1aASyafJLCUQGs8gewomlcW+i9oC8PlLNfaTHFYbXO9A/RTycvrksKpWIw2QUe4=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wZUoH-0001gr-Hx;
	Tue, 16 Jun 2026 14:30:37 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ukleinek@baylibre.com>) id 1wZUny-0001gX-IX
 for openipmi-developer@lists.sourceforge.net;
 Tue, 16 Jun 2026 14:30:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uzMY8ctHFziV0g5CZj3Y86D/oxHC1KeaTt6oEdyegEU=; b=fG6y4+4a1G2s9eUylysc79+A9q
 lBSkhE6ihBlYbASRTNQjws2ANIskIobQhI5I2aAMtqkro4lvmwPBWj0lptuziaoPtywCgCt/4rT/0
 1pHs1AoSEOpikaL7F4xPTDd2fxFP8pxz3W77/OHx4EwOD3Y1K6zWvqElHK75++r2SMSY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=uzMY8ctHFziV0g5CZj3Y86D/oxHC1KeaTt6oEdyegEU=; b=k
 qtF9V9egA+K9gaSFm91SR9XDvi8j+gyKcSNHUvw6Cw9zFELK6QNvVFmfI0P9TOXekCVO5d9NliRLq
 WBJ4EJXvqAY8/2XvQ2AOc5LhpqToboxPqnWeAWRXLpTDaOIM3RK/T03tVc43Y3D1QIzxmJQXo/btg
 oFOJLyh4TnJNF7JM=;
Received: from mail-wm1-f54.google.com ([209.85.128.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wZUnp-00055I-Ic for openipmi-developer@lists.sourceforge.net;
 Tue, 16 Jun 2026 14:30:12 +0000
Received: by mail-wm1-f54.google.com with SMTP id
 5b1f17b1804b1-490bb83a3f6so36389975e9.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 16 Jun 2026 07:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre.com; s=google; t=1781620198; x=1782224998;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=uzMY8ctHFziV0g5CZj3Y86D/oxHC1KeaTt6oEdyegEU=;
 b=p08KhLjwEFwAQCCpg/m5MsGVMePvWVdmWLy3L+DmC3soDJAJNI7EBXslOLIUxwW5a5
 3RI43z+Z3n58V1UPvRkf7Lvaj8tKdi3tgxpdgQE7sb/v6EOXISuhhYsbMdGI5ZIJ3mck
 zltwaV5yBvAqcEaZ2FTzBkAE9VjWLxSyvZqtBhNNqjApbF7UCkndnbsPPaq0ZR5jz57l
 HAi+Z5tkjcZAyR8X6Qyp5d4wIIf2T4bhw0hYOj2T8BkmtrmoDqi60nkIlAGZ0Prfc/jE
 HgKEo/ewh/Hcw17sFmsSnI/P58Z3Ibxwx8U2Yw49v+D1wsVWSTmKFIW6Dk3q5FUxks8z
 1A7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781620198; x=1782224998;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=uzMY8ctHFziV0g5CZj3Y86D/oxHC1KeaTt6oEdyegEU=;
 b=sqMCJY6EvoFJah4+GgGuK8FiBnen3LnKGHHI4byvRkhdYu1QNaw+ErKlCbLvtuStbV
 Y9z9jpwJVB7sALqmxoLKsHkTI6ClQu//6EAt2REIAQBgqxg4+twDMfBlWHk1MG/oYtaB
 85ygl4OscrMoxcsDSAVmUNpQ4mUkkqne4wjPilwXDt3BzlyYJ8RH1rpQu34N527DKhdT
 3JlBWZr/8abbt9mha1KE4WdjTtbX7uvA5cZYKoVzsSA2oEq4uJgK9GQEfVWe279UR8wc
 RukV4llZCIk2J07q+8YpUrTqj6jedMDP3iPrQT0jcRCb2KysKP9fGhDKH8Wo6VrjLOot
 0Vow==
X-Gm-Message-State: AOJu0YywVbhBtIChCIYC5CSX3aVX+F/uuvBY7JsKjDx6mwbbjjUi0XKo
 n/FIN9fgfFQ4fTijQ4u4vE3rK1wd2ilPEtF6aIdZrJB+0IxqAlpEAp4lXQnPENqTufU=
X-Gm-Gg: Acq92OE3jFxojRJ9GCaC82Mxy2ZFZPdPg1CZx3KrvW7kGp5UClC9M7eKhMzks7tVb56
 nxoBXcWHjZaTXX5yWXuX+JCRqAXtbt0J+u9dbCNScSgBpMLgH4QkfnB6Y4LGjzWjMjJFboQHv7z
 AuuCtvCRmwFrSDdEj3WPwQkG46vPMgi8GTkTvm2iEGCpa8byXKZOq/O4IPJ7bxMuY2q/B922Wf+
 Qruzw3k5EOA/FjaYbNLmmZ0Q7zKjBJhjEd1FCQX+iXTH04KXqFcRhc7/Mkpoa1tWzd7WeDsxiH+
 LL3a20maQplB9TNe0549aOlpWuZcAUhuAMrEoMPW6ZqC4VBb+632qnbJp7yIEV6oNxKGPxLgXv7
 WxN7cNOkaMQlni/85HTrMAN+0JzViTSprWMCbxAIJAPvRF7HUcBQiPdxaWDF94hsSxXAlBkfS/s
 6P802I65Mupide+jS1aPD4S2SXKQifEUxfYXmgw693l8xnKbJNsOQTzd/9om6qOVcHDLRNQNOs3
 zI8gTEfPe3qvr4parbtV0vl4w==
X-Received: by 2002:a05:600c:3b29:b0:490:ec79:3077 with SMTP id
 5b1f17b1804b1-4922ff93c85mr58118615e9.16.1781620198190; 
 Tue, 16 Jun 2026 07:29:58 -0700 (PDT)
Received: from localhost
 (p200300f65f47db04ed78e379f226b032.dip0.t-ipconnect.de.
 [2003:f6:5f47:db04:ed78:e379:f226:b032])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-4922fa3a4easm84537945e9.3.2026.06.16.07.29.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2026 07:29:57 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig=20=28The=20Capable=20Hub=29?=
 <u.kleine-koenig@baylibre.com>
To: Corey Minyard <corey@minyard.net>
Date: Tue, 16 Jun 2026 16:29:52 +0200
Message-ID: <9afdb7b0894f51fba78c64612428f7bb117901d1.1781620139.git.u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=970;
 i=u.kleine-koenig@baylibre.com; h=from:subject:message-id;
 bh=4W+WMXiowaVaRXIym2JEUt5h4wIqVIJD8bsWFbkv2Fw=;
 b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBqMV3gFsMl2xEE2c1ceWkmswSx9zcA/ZfGzQp/N
 Ey7N+LlbY2JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCajFd4AAKCRCPgPtYfRL+
 TnTbB/9UDi8PH6G+ePwc0EShQ+m7Zzom4jUU+qxBhkXEewluGl3pAAXpg7W2jCRbFeLirHXN7sq
 tRIXouB4zoJ+JZELuUmLnDiwDd+nXAF3kIHxytzFzGzwBwyqisSlikpI1rUnj5cM4k17XfDNP35
 z+CRnn57rRNtAN34cOeZTjxyrzdoUr3kHd7VbiLlZmA22ZvWMRFUWTWtQnqgU5+UOWmaxnl7I7c
 pZnHhVfp7hcRf+gUB7YEi9Uz2PBuN7HmeaopMonnwfTVCd9kwFGSmm2PGtd6EEXldzR0owEUPKp
 6L5k6ePScL8YmJMdk+2JrJ4gM4dpr8i6phU8JRd6iuq1UhnY
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp;
 fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-2.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The driver explicitly sets the .driver_data member of struct
    platform_device_id to zero without relying on that value. Drop these unused
    assignments. Signed-off-by: Uwe Kleine-König (The Capable Hub) <u.kleine-koenig@baylibre.com>
    --- drivers/char/ipmi/ipmi_si_platform.c | 6 +++--- 1 file changed, 3 insertions(+),
    3 deletions(-) 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
  0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.128.54 listed in wl.mailspike.net]
X-Headers-End: 1wZUnp-00055I-Ic
Subject: [Openipmi-developer] [PATCH v1] ipmi: Drop unused assignment of
 platform_device_id driver data
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.01 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[baylibre.com];
	FROM_NEQ_ENVFROM(0.00)[u.kleine-koenig@baylibre.com,openipmi-developer-bounces@lists.sourceforge.net];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[u.kleine-koenig@baylibre.com,openipmi-developer-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_MIXED(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,baylibre.com:s=google];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,baylibre.com:-];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:from_smtp,baylibre.com:email,baylibre.com:mid,baylibre.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3B20669081A

VGhlIGRyaXZlciBleHBsaWNpdGx5IHNldHMgdGhlIC5kcml2ZXJfZGF0YSBtZW1iZXIgb2Ygc3Ry
dWN0CnBsYXRmb3JtX2RldmljZV9pZCB0byB6ZXJvIHdpdGhvdXQgcmVseWluZyBvbiB0aGF0IHZh
bHVlLiBEcm9wIHRoZXNlCnVudXNlZCBhc3NpZ25tZW50cy4KClNpZ25lZC1vZmYtYnk6IFV3ZSBL
bGVpbmUtS8O2bmlnIChUaGUgQ2FwYWJsZSBIdWIpIDx1LmtsZWluZS1rb2VuaWdAYmF5bGlicmUu
Y29tPgotLS0KIGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfcGxhdGZvcm0uYyB8IDYgKysrLS0t
CiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfcGxhdGZvcm0uYyBiL2RyaXZlcnMvY2hh
ci9pcG1pL2lwbWlfc2lfcGxhdGZvcm0uYwppbmRleCBmYjZlMzU5YWU0OTQuLjM2N2QwZDk2OWIy
ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zaV9wbGF0Zm9ybS5jCisrKyBi
L2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfcGxhdGZvcm0uYwpAQCAtNDMzLDkgKzQzMyw5IEBA
IHZvaWQgaXBtaV9yZW1vdmVfcGxhdGZvcm1fZGV2aWNlX2J5X25hbWUoY2hhciAqbmFtZSkKIH0K
IAogc3RhdGljIGNvbnN0IHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2VfaWQgc2lfcGxhdF9pZHNbXSA9
IHsKLQl7ICJkbWktaXBtaS1zaSIsIDAgfSwKLQl7ICJoYXJkY29kZS1pcG1pLXNpIiwgMCB9LAot
CXsgImhvdG1vZC1pcG1pLXNpIiwgMCB9LAorCXsgLm5hbWUgPSAiZG1pLWlwbWktc2kiIH0sCisJ
eyAubmFtZSA9ICJoYXJkY29kZS1pcG1pLXNpIiB9LAorCXsgLm5hbWUgPSAiaG90bW9kLWlwbWkt
c2kiIH0sCiAJeyB9CiB9OwogCgpiYXNlLWNvbW1pdDogOGQ2ZGJiYmUzYmE2MmRlMGE2M2U5NjJl
ZTAwNGFmYjg0OGM4ZTNhYwotLSAKMi40Ny4zCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3Bl
bmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJj
ZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
