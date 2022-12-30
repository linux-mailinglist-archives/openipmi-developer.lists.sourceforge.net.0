Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 887AC659887
	for <lists+openipmi-developer@lfdr.de>; Fri, 30 Dec 2022 14:02:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pBF1R-0008ET-DS;
	Fri, 30 Dec 2022 13:02:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ukl@pengutronix.de>) id 1pBF1P-0008EC-Eu
 for openipmi-developer@lists.sourceforge.net;
 Fri, 30 Dec 2022 13:02:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eYZ7G20MiZsP6RHmIQZg3K5ofRANL9d+0jaqmBwiJWg=; b=B02qSwOini9uX2OLO+svMgRjA0
 Xnr9DZX13UYu/bg/nnNkM6Kl7o3R0y0CDXtfdq8xPkQUhMOC1huQEFNeSHQ72UkUl02TR2pfZ3Xs0
 G8K2auX74WgCs9IXYjFcK771aeyYq5etrpj7UptOQH2saDGuc5+ISdsqDElqsgLHUHOA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=eYZ7G20MiZsP6RHmIQZg3K5ofRANL9d+0jaqmBwiJWg=; b=S
 DTg9+ewrcdRinVAoJhJ/sBzsnccZu0eOu4kD8BXWmkK8c5aPysw0Nctk7cwd/l2+FMNVrV6wj+Iyt
 02ett5FC32UUW9bMfoCsfmd+Pf1b3D08+bt9ODFaRoT1tPYMjxhZFoQqhX/aantEPBgSU+KfFwV/v
 mpWDZ5evseFZJvN8=;
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pBF1H-0001hx-4Q for openipmi-developer@lists.sourceforge.net;
 Fri, 30 Dec 2022 13:02:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1pBEkW-00025d-5K; Fri, 30 Dec 2022 13:44:36 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1pBEkU-002i6x-DB; Fri, 30 Dec 2022 13:44:34 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1pBEkT-008yoy-IX; Fri, 30 Dec 2022 13:44:33 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Corey Minyard <minyard@acm.org>
Date: Fri, 30 Dec 2022 13:44:31 +0100
Message-Id: <20221230124431.202474-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1344;
 i=u.kleine-koenig@pengutronix.de; h=from:subject;
 bh=GAFV85YahUT2C1d3W1gU3Cm2BgRcdktWiEMDl4XKtkk=;
 b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBjrt0oBmRWXondlh5/5G8oORRpXG9S2wHHrXNl4xnx
 P0pz8RqJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCY67dKAAKCRDB/BR4rcrsCcPzB/
 96hbveoCt3IwjkXZNUsuUEHVg1Y+bPeTsbejcssZhb+3ipetmY04JX2ZrOLYQRHfiOzq1tYdnEdjjU
 KwSgGaVnrJuNRbRNTcCtahUDmXYj/1zz4kk4MZko3XbT2h3OwF/f6NgIfomRllyreGP1JPbAhDcy6R
 jIaccWAPy9ChGdtyRVOYas6GTlBEqXzXhgRALPmXBteIDTW5c1oysh2esMpaQlDpahsR5cmiZc83Em
 83m1tAnaOvOhAASHlE18dpfnBTeL6M5hUKBESiJT3DbOEprjRgf8kRcLgyF2hgIz6LuRegespZXGYF
 65N05P98sxfPuXwSlSX8koXlgTGnVn
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp;
 fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: openipmi-developer@lists.sourceforge.net
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: For both variants (platform and i2c driver) after a
 successful
 bind (i.e. .probe completed without error) driver data is set to a non-NULL
 value. So the return value of i2c_get_clientdata and dev_get_drvdata
 respectively
 are not NULL and so the if blocks are never executed. (And if you fear they
 might, they shouldn't return silently and yield a [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [85.220.165.71 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1pBF1H-0001hx-4Q
Subject: [Openipmi-developer] [PATCH] ipmi:ssif: Drop if blocks with always
 false condition
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
Cc: openipmi-developer@lists.sourceforge.net, kernel@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Rm9yIGJvdGggdmFyaWFudHMgKHBsYXRmb3JtIGFuZCBpMmMgZHJpdmVyKSBhZnRlciBhIHN1Y2Nl
c3NmdWwgYmluZAooaS5lLiAucHJvYmUgY29tcGxldGVkIHdpdGhvdXQgZXJyb3IpIGRyaXZlciBk
YXRhIGlzIHNldCB0byBhIG5vbi1OVUxMCnZhbHVlLgoKU28gdGhlIHJldHVybiB2YWx1ZSBvZiBp
MmNfZ2V0X2NsaWVudGRhdGEgYW5kIGRldl9nZXRfZHJ2ZGF0YQpyZXNwZWN0aXZlbHkgYXJlIG5v
dCBOVUxMIGFuZCBzbyB0aGUgaWYgYmxvY2tzIGFyZSBuZXZlciBleGVjdXRlZC4gKEFuZAppZiB5
b3UgZmVhciB0aGV5IG1pZ2h0LCB0aGV5IHNob3VsZG4ndCByZXR1cm4gc2lsZW50bHkgYW5kIHlp
ZWxkIGEKcmVzb3VyY2UgbGVhay4pCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8
dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvY2hhci9pcG1pL2lw
bWlfc3NpZi5jIHwgNiAtLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfc3NpZi5jIGIvZHJpdmVycy9jaGFyL2lw
bWkvaXBtaV9zc2lmLmMKaW5kZXggNGJmZDFlMzA2NjE2Li5hMDA5MGVhNTRlNDggMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfc3NpZi5jCisrKyBiL2RyaXZlcnMvY2hhci9pcG1p
L2lwbWlfc3NpZi5jCkBAIC0xMjg2LDkgKzEyODYsNiBAQCBzdGF0aWMgdm9pZCBzc2lmX3JlbW92
ZShzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50KQogCXN0cnVjdCBzc2lmX2luZm8gKnNzaWZfaW5m
byA9IGkyY19nZXRfY2xpZW50ZGF0YShjbGllbnQpOwogCXN0cnVjdCBzc2lmX2FkZHJfaW5mbyAq
YWRkcl9pbmZvOwogCi0JaWYgKCFzc2lmX2luZm8pCi0JCXJldHVybjsKLQogCS8qCiAJICogQWZ0
ZXIgdGhpcyBwb2ludCwgd2Ugd29uJ3QgZGVsaXZlciBhbnl0aGluZyBhc3ljaHJvbm91c2x5CiAJ
ICogdG8gdGhlIG1lc3NhZ2UgaGFuZGxlci4gIFdlIGNhbiB1bnJlZ2lzdGVyIG91cnNlbGYuCkBA
IC0yMDc0LDkgKzIwNzEsNiBAQCBzdGF0aWMgaW50IHNzaWZfcGxhdGZvcm1fcmVtb3ZlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKmRldikKIHsKIAlzdHJ1Y3Qgc3NpZl9hZGRyX2luZm8gKmFkZHJf
aW5mbyA9IGRldl9nZXRfZHJ2ZGF0YSgmZGV2LT5kZXYpOwogCi0JaWYgKCFhZGRyX2luZm8pCi0J
CXJldHVybiAwOwotCiAJbXV0ZXhfbG9jaygmc3NpZl9pbmZvc19tdXRleCk7CiAJbGlzdF9kZWwo
JmFkZHJfaW5mby0+bGluayk7CiAJa2ZyZWUoYWRkcl9pbmZvKTsKLS0gCjIuMzguMQoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZl
bG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWkt
ZGV2ZWxvcGVyCg==
