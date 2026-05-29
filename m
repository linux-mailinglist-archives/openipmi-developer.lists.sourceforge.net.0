Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OL3FF65yGWoQwwgAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 29 May 2026 13:04:14 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A860601408
	for <lists+openipmi-developer@lfdr.de>; Fri, 29 May 2026 13:04:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2gP23Suy9Ui/hjir+IwAKzfaC0C9eniPic3C3I+lRH4=; b=UGeY7VNctggeuqPBJ61DAIoAbr
	rr4PV+H1mlZ1lNqD7yTqKAGIiOCjTVWhDUgidlWTaMoSi3dLXkZUDAxvzeq+aGCcwMFh6+GFoh6Sr
	jXNxHMAwonU1vvpj3gSlBSKewg+TXksejcPCmP/7201xGvl/3lv9IOdCATMnID74ja70=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wSv0U-0003ip-Dk;
	Fri, 29 May 2026 11:04:02 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ukleinek@baylibre.com>) id 1wSv0S-0003iW-Iw
 for openipmi-developer@lists.sourceforge.net;
 Fri, 29 May 2026 11:04:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w/+RQP9tpz3rp4LJ6HQwXws9fGzhh4z7FnoDGsc0xnE=; b=GmomgR8S4krG3FgX5jJUbMidAg
 VCz7N7l50lK757omovoK8e2poMSym/EnbY8J2UlV6gIjf+mM0JIaWsbkSXgeGpnF4IOpY+aMiE5I2
 r833rJXQ8xIt2BAlvBC9UCYCE77VRrFHal2Km9YSM761E7m+vT7Z/1IxFE+mVIWahtEg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=w/+RQP9tpz3rp4LJ6HQwXws9fGzhh4z7FnoDGsc0xnE=; b=f
 QnikWXBMHPJeDvEQmJIYT5EmmD4+F7XWB9v4IdfE5zQ0F06z4l3S6Vd9Bng+PlANwyC5BBrEATMgC
 5dxuk33eVGvw2i+NeXqipoAwU/NUoBOpAo47/L0OthM6w1xwHc5sqJ8nd77Udz1XtYQMwBk+boUI0
 HQUsq/tP4vh8W/SI=;
Received: from mail-wm1-f45.google.com ([209.85.128.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wSv0P-0000Hm-37 for openipmi-developer@lists.sourceforge.net;
 Fri, 29 May 2026 11:04:00 +0000
Received: by mail-wm1-f45.google.com with SMTP id
 5b1f17b1804b1-4891c0620bcso89015885e9.1
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 29 May 2026 04:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre.com; s=google; t=1780052626; x=1780657426;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=w/+RQP9tpz3rp4LJ6HQwXws9fGzhh4z7FnoDGsc0xnE=;
 b=cWGSsI1IXOgUsBteU1SA0Bd+VVseB33L4OsAfUN+ZAWpHmfdfn9UTsHZ2yo56r88lb
 5cotWLk90mz+MXW4govHNAEcWZkM1EqYb68mp3vzsmnCgPF4BUUt3SPg5Owz4OKldP6u
 AbHk/V6Bfk97xRSZxmFTXAhziBeOCdixthQMtoNC8OVidlOjru5lyj9sRD3Q6vDzRMYD
 w6z5tvM0mviCMug+dSbPn2kMadegOezRmnq7ciJSbsorxqCLaH4eakndZDijieKftOOO
 tDdD6S0xXVnLoTzzz1otJj8WdWkHQW9f4EHI0CdVbH3FSIs2qIicycOYAeP5jzj7i0AK
 x5Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780052626; x=1780657426;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=w/+RQP9tpz3rp4LJ6HQwXws9fGzhh4z7FnoDGsc0xnE=;
 b=b6TEK79P6rwlHgzkT0IEgZ5ugdJZmY5jvbchS5zuLKOrLpTIcQkpx2xEjcb7CC5wGj
 fhghoCRSEsum9hcukZBquirz5V68/jyjFbMqtN0zjTjMKMzQavuDLHDfCY9cAy67xUmO
 8ejlKuGkfml723CHRhYH5L3jCESfQXdVAsy//XogjsZx8VV7lfi5kZGB4h5ryMI2vUXo
 M5SFeKxuWy1+sNGcSZmCnE7WOJ6zlS2JR8+AruxuRYlz5hXXnRIr2fctLadYVESDs1a2
 GT387gLDvTMG9kJZim0V6ObQs6zNDJ+gJZQgNoFNbEhNujrTE1DY+7+5uQQLOiuW0Yt5
 eYWQ==
X-Gm-Message-State: AOJu0YzE2/YKhsio3Jp2oUsmcaENIb8AgSK//uNw7FLYeDwX2ypPnWeB
 0X7dB2MXzxpn8jApiK0c8gOOeuEefUf9roA+5aqLGwAQXUQhLh30gIvO2ES1fSQoNvY=
X-Gm-Gg: Acq92OF0+Cjtq0Yz3cinPOozdg0WiCvn/dS7UD8npQEP8/neh3goJ0w0rpI3PafZqh/
 +4NW7wldIDNtrYu1IhuWJ5xDORyxdVw196ZYmREufUtm8UGYhKxrkqwRpzkgkkGddWCievVxwdv
 80D8S/eDM8wRN7bSqtfM+4/TAdAcp7ImoUfd0aZhbNKBiMlBxAfHI9iaenetr3DEF57aan1PRF9
 CNXiUHHtRZCHOorMzrEClBfkPMC7DWvyJyHW7A14YCAL+FVpADVqPisQZyI5fryA1zrhQ24fHF0
 tg+iCfCqYP/TDCYXR/jQIXfal4qWJzfXlYpyuSdM+w/V1bE6X4DX/PdI6vbQWAz77pV6GFa7QfN
 kka3zCwwomKNVwVABmMKzmDOR4GK1EjYnjhcqOmTubAlN1rCyvzLO2v5EK04f4MZuyu3LvbDTih
 jhXatFqMutb2FvOzg3Cwo9CQoGaoqwpDhhm0LElhL2e4VeCowOvdi7c6gN3TS/jm0rkNTWc6kJd
 KgoumWHbGp2swjAggB1ErqVRw==
X-Received: by 2002:a05:600c:2113:b0:490:845e:3a6 with SMTP id
 5b1f17b1804b1-4909c0b706amr28667355e9.25.1780052626038; 
 Fri, 29 May 2026 04:03:46 -0700 (PDT)
Received: from localhost
 (p200300f65f47db043f932d8b97293bf6.dip0.t-ipconnect.de.
 [2003:f6:5f47:db04:3f93:2d8b:9729:3bf6])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-4909d696f25sm43887345e9.5.2026.05.29.04.03.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2026 04:03:45 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig=20=28The=20Capable=20Hub=29?=
 <u.kleine-koenig@baylibre.com>
To: Corey Minyard <corey@minyard.net>
Date: Fri, 29 May 2026 13:03:39 +0200
Message-ID: <5966a65daf432613a58af373af79c9c4421b3985.1780052427.git.u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1171;
 i=u.kleine-koenig@baylibre.com; h=from:subject:message-id;
 bh=YUvArU5PWb3EZdQlyoQ0I5/V+FVpBDOFd7xJ8D9n3KY=;
 b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBqGXKLJfhfoDWIUqjGp9NCedtIQQTk7989smKBJ
 8UeUHkqJXCJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCahlyiwAKCRCPgPtYfRL+
 TqA6CACNdaWHcVFkQwYpxuHOtZBUVZ90yl9/wIz6UE5l54F4HzPjXRMexmhSD2V2Dbuu+ydBBOa
 mnYqEbBPDANbFTc2hrbgPJSuwcEsVsYyDky0ZJwLBAaRlkAn1R/fwFxkeMDNHmojIkmicj/pX8f
 cqhlpdEcXeb8n6ELheH9sPfcPHX0/58SxW1Ej7IXNL/nyLrXSif0YJqSpdzlQazV/oGXTOD9st8
 VjCszKqq6eL1PeLZL5TSx9y1UWfOXI8dG+LlMrNpX0wxnvrAInOrCPzDW34q71Q0BqSnvStIsrI
 lQA5IG74z8SokLpS+tg2GIwMqnPNb4AdQVSwHhfNQwq94/Uk
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp;
 fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The driver explicitly set the .driver_data member of struct
 platform_device_id to zero without relying on that value. Drop this unused
 assignments. While touching this array use a named initializer for assigning
 .name. Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.45 listed in wl.mailspike.net]
X-Headers-End: 1wSv0P-0000Hm-37
Subject: [Openipmi-developer] [PATCH v1] ipmi:ssif: Drop unused assignment
 of platform_device_id driver data
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
X-Spamd-Result: default: False [-0.01 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[u.kleine-koenig@baylibre.com,openipmi-developer-bounces@lists.sourceforge.net];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	DMARC_NA(0.00)[baylibre.com];
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
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,baylibre.com:-];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:mid,baylibre.com:email]
X-Rspamd-Queue-Id: 8A860601408
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

VGhlIGRyaXZlciBleHBsaWNpdGx5IHNldCB0aGUgLmRyaXZlcl9kYXRhIG1lbWJlciBvZiBzdHJ1
Y3QKcGxhdGZvcm1fZGV2aWNlX2lkIHRvIHplcm8gd2l0aG91dCByZWx5aW5nIG9uIHRoYXQgdmFs
dWUuIERyb3AgdGhpcwp1bnVzZWQgYXNzaWdubWVudHMuCgpXaGlsZSB0b3VjaGluZyB0aGlzIGFy
cmF5IHVzZSBhIG5hbWVkIGluaXRpYWxpemVyIGZvciBhc3NpZ25pbmcgLm5hbWUuCgpTaWduZWQt
b2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyAoVGhlIENhcGFibGUgSHViKSA8dS5rbGVpbmUta29l
bmlnQGJheWxpYnJlLmNvbT4KLS0tCkhlbGxvLAoKdGhpcyBwYXRjaCBpcyBhIHByZXBhcmF0aW9u
IGZvciBjaGFuZ2luZyBzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlX2lkCnNlZSBlLmcuCmh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2FsbC9jb3Zlci4xNzc5ODc4MDA0LmdpdC51LmtsZWluZS1rb2VuaWdA
YmF5bGlicmUuY29tLwpmb3IgdGhlIGRldGFpbHMgYWJvdXQgdGhlIHF1ZXN0LgoKQmVzdCByZWdh
cmRzClV3ZQoKIGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfc3NpZi5jIHwgMiArLQogMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9jaGFyL2lwbWkvaXBtaV9zc2lmLmMgYi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NzaWYuYwpp
bmRleCBhZGQwNDNiODEyZWEuLjA3ZjFkMjMyN2JiNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9jaGFy
L2lwbWkvaXBtaV9zc2lmLmMKKysrIGIvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zc2lmLmMKQEAg
LTIxMjcsNyArMjEyNyw3IEBAIHN0YXRpYyB2b2lkIHNzaWZfcGxhdGZvcm1fcmVtb3ZlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKmRldikKIH0KIAogc3RhdGljIGNvbnN0IHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2VfaWQgc3NpZl9wbGF0X2lkc1tdID0gewotICAgIHsgImRtaS1pcG1pLXNzaWYiLCAw
IH0sCisgICAgeyAubmFtZSA9ICJkbWktaXBtaS1zc2lmIiB9LAogICAgIHsgfQogfTsKIE1PRFVM
RV9ERVZJQ0VfVEFCTEUocGxhdGZvcm0sIHNzaWZfcGxhdF9pZHMpOwoKYmFzZS1jb21taXQ6IGY3
YWY5MWFkYzIzMGFhOTllMjMzMzBlY2Y4NWJjOWJhZGQ5NzgwYWQKLS0gCjIuNDcuMwoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZl
bG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWkt
ZGV2ZWxvcGVyCg==
