Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 71571711898
	for <lists+openipmi-developer@lfdr.de>; Thu, 25 May 2023 22:59:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1q2I2v-0006Bh-6y;
	Thu, 25 May 2023 20:58:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ukl@pengutronix.de>) id 1q2I2r-0006Ba-I2
 for openipmi-developer@lists.sourceforge.net;
 Thu, 25 May 2023 20:58:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vZlVs/B35YMQlZgRqCbGeobXZg40ZS+EC6KU01lS+0I=; b=cF4qGnR/ik7AC5gdJZYaLCkfkr
 MhImTNfJOv018b9TaW5dGn4JgTNWI6WdcRNLOM6x0QZz6TPvvXCQ07S9sA1aCfOeruFDx8/3zWC5L
 PgqO7uPpOLGtIdwIQxPxbrvovnJ/5xWQ8r2PfZ3M/5izZK2uxhfEk8atkzrh/g7Hpv1w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=vZlVs/B35YMQlZgRqCbGeobXZg40ZS+EC6KU01lS+0I=; b=K
 oqunTUEp0dkN/dhtppkZCUwpYZTVSwlaUYbO919ANMwGAjh4YKNuKf0eOdKc1nDS54EOBySenQeYA
 gCmKh7NA3zsZTvVufreJGaG6ONSMfI8tfN9mmg+O2icvaNUk8Mlu3jr4GOEi1/Y7mfyFHRAgWSIIX
 Ti5+9Uz/5UnrHcAI=;
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q2I2l-0001DC-RW for openipmi-developer@lists.sourceforge.net;
 Thu, 25 May 2023 20:58:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1q2Hl2-0006KI-3B; Thu, 25 May 2023 22:40:24 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1q2Hl1-002nnT-3e; Thu, 25 May 2023 22:40:23 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1q2Hl0-007xYF-Fo; Thu, 25 May 2023 22:40:22 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Corey Minyard <minyard@acm.org>
Date: Thu, 25 May 2023 22:40:21 +0200
Message-Id: <20230525204021.696858-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2504;
 i=u.kleine-koenig@pengutronix.de; h=from:subject;
 bh=itGebXgk6rULKM/y/IupVrqHznz/5YFfq96lXBEvtmo=;
 b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBkb8eyUpWr9sb2ZYv2NS+gyNeDjfP6tUI5H7JjU
 Jzwr+2aSumJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZG/HsgAKCRCPgPtYfRL+
 Tq09B/4qx9dN8kM00V3JJEa/bn+uvEte8xbzTFv12yKUFvQe0CVfREgknnfuzYaRE4dVOxs+N+D
 PyJBP548AHB2XcKbAxv9enwNRG7pSB3g3Yw59RfIsctfBgb/vnE44Hr/WKpV4qiBj3zRPLMPgQr
 k71sbDHbDQPs7hUbKUhETJN9CEaFBvPIlGMRzzleptidyWI9uUKTJCxNsirPGTKTqRSq4ZK1f6r
 0D/pUYFaWA4wy9eR1CQCk0MJ9Wqn0uY5ywsRZqSdnGfIR0wdBiFXx895G/nTdT+pDYqia6+c/L8
 PDJmOPM2JKdc/MYUobhp1XHpghMVeClune+iET0RRvGfXFt4
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp;
 fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: openipmi-developer@lists.sourceforge.net
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: After commit b8a1a4cd5a98 ("i2c: Provide a temporary
 .probe_new() call-back type"),
 all drivers being converted to .probe_new() and then 03c835f498b5
 ("i2c: Switch .probe() to not take an id parameter [...] 
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [85.220.165.71 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q2I2l-0001DC-RW
Subject: [Openipmi-developer] [PATCH] ipmi: Switch i2c drivers back to use
 .probe()
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

QWZ0ZXIgY29tbWl0IGI4YTFhNGNkNWE5OCAoImkyYzogUHJvdmlkZSBhIHRlbXBvcmFyeSAucHJv
YmVfbmV3KCkKY2FsbC1iYWNrIHR5cGUiKSwgYWxsIGRyaXZlcnMgYmVpbmcgY29udmVydGVkIHRv
IC5wcm9iZV9uZXcoKSBhbmQgdGhlbgowM2M4MzVmNDk4YjUgKCJpMmM6IFN3aXRjaCAucHJvYmUo
KSB0byBub3QgdGFrZSBhbiBpZCBwYXJhbWV0ZXIiKSBjb252ZXJ0CmJhY2sgdG8gKHRoZSBuZXcp
IC5wcm9iZSgpIHRvIGJlIGFibGUgdG8gZXZlbnR1YWxseSBkcm9wIC5wcm9iZV9uZXcoKSBmcm9t
CnN0cnVjdCBpMmNfZHJpdmVyLgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUu
a2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2ZXJzL2NoYXIvaXBtaS9pcG1i
X2Rldl9pbnQuYyB8IDIgKy0KIGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfaXBtYi5jICAgIHwgMiAr
LQogZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zc2lmLmMgICAgfCAyICstCiBkcml2ZXJzL2NoYXIv
aXBtaS9zc2lmX2JtYy5jICAgICB8IDIgKy0KIDQgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25z
KCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2hhci9pcG1pL2lwbWJf
ZGV2X2ludC5jIGIvZHJpdmVycy9jaGFyL2lwbWkvaXBtYl9kZXZfaW50LmMKaW5kZXggYTBlOWU4
MGQ5MmVlLi40OTEwMDg0NWZjYjcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvY2hhci9pcG1pL2lwbWJf
ZGV2X2ludC5jCisrKyBiL2RyaXZlcnMvY2hhci9pcG1pL2lwbWJfZGV2X2ludC5jCkBAIC0zNjYs
NyArMzY2LDcgQEAgc3RhdGljIHN0cnVjdCBpMmNfZHJpdmVyIGlwbWJfZHJpdmVyID0gewogCQku
bmFtZSA9ICJpcG1iLWRldiIsCiAJCS5hY3BpX21hdGNoX3RhYmxlID0gQUNQSV9QVFIoYWNwaV9p
cG1iX2lkKSwKIAl9LAotCS5wcm9iZV9uZXcgPSBpcG1iX3Byb2JlLAorCS5wcm9iZSA9IGlwbWJf
cHJvYmUsCiAJLnJlbW92ZSA9IGlwbWJfcmVtb3ZlLAogCS5pZF90YWJsZSA9IGlwbWJfaWQsCiB9
OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9pcG1iLmMgYi9kcml2ZXJzL2No
YXIvaXBtaS9pcG1pX2lwbWIuYwppbmRleCAzZjFjOWYxNTczZTcuLjRlMzM1ODMyZmMyNiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9pcG1iLmMKKysrIGIvZHJpdmVycy9jaGFy
L2lwbWkvaXBtaV9pcG1iLmMKQEAgLTU3Miw3ICs1NzIsNyBAQCBzdGF0aWMgc3RydWN0IGkyY19k
cml2ZXIgaXBtaV9pcG1iX2RyaXZlciA9IHsKIAkJLm5hbWUgPSBERVZJQ0VfTkFNRSwKIAkJLm9m
X21hdGNoX3RhYmxlID0gb2ZfaXBtaV9pcG1iX21hdGNoLAogCX0sCi0JLnByb2JlX25ldwk9IGlw
bWlfaXBtYl9wcm9iZSwKKwkucHJvYmUJCT0gaXBtaV9pcG1iX3Byb2JlLAogCS5yZW1vdmUJCT0g
aXBtaV9pcG1iX3JlbW92ZSwKIAkuaWRfdGFibGUJPSBpcG1pX2lwbWJfaWQsCiB9OwpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zc2lmLmMgYi9kcml2ZXJzL2NoYXIvaXBtaS9p
cG1pX3NzaWYuYwppbmRleCAzYjkyMWM3OGJhMDguLmM2YzliY2Y2YmY1NSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zc2lmLmMKKysrIGIvZHJpdmVycy9jaGFyL2lwbWkvaXBt
aV9zc2lmLmMKQEAgLTIwNTQsNyArMjA1NCw3IEBAIHN0YXRpYyBzdHJ1Y3QgaTJjX2RyaXZlciBz
c2lmX2kyY19kcml2ZXIgPSB7CiAJLmRyaXZlcgkJPSB7CiAJCS5uYW1lCQkJPSBERVZJQ0VfTkFN
RQogCX0sCi0JLnByb2JlX25ldwk9IHNzaWZfcHJvYmUsCisJLnByb2JlCQk9IHNzaWZfcHJvYmUs
CiAJLnJlbW92ZQkJPSBzc2lmX3JlbW92ZSwKIAkuYWxlcnQJCT0gc3NpZl9hbGVydCwKIAkuaWRf
dGFibGUJPSBzc2lmX2lkLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9jaGFyL2lwbWkvc3NpZl9ibWMu
YyBiL2RyaXZlcnMvY2hhci9pcG1pL3NzaWZfYm1jLmMKaW5kZXggY2FlZTg0ODI2MWU5Li41NjM0
NmZiMzI4NzIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvY2hhci9pcG1pL3NzaWZfYm1jLmMKKysrIGIv
ZHJpdmVycy9jaGFyL2lwbWkvc3NpZl9ibWMuYwpAQCAtODYwLDcgKzg2MCw3IEBAIHN0YXRpYyBz
dHJ1Y3QgaTJjX2RyaXZlciBzc2lmX2JtY19kcml2ZXIgPSB7CiAJCS5uYW1lICAgICAgICAgICA9
IERFVklDRV9OQU1FLAogCQkub2ZfbWF0Y2hfdGFibGUgPSBzc2lmX2JtY19tYXRjaCwKIAl9LAot
CS5wcm9iZV9uZXcgICAgICA9IHNzaWZfYm1jX3Byb2JlLAorCS5wcm9iZSAgICAgICAgICA9IHNz
aWZfYm1jX3Byb2JlLAogCS5yZW1vdmUgICAgICAgICA9IHNzaWZfYm1jX3JlbW92ZSwKIAkuaWRf
dGFibGUgICAgICAgPSBzc2lmX2JtY19pZCwKIH07CgpiYXNlLWNvbW1pdDogYWM5YTc4NjgxYjky
MTg3NzUxODc2M2JhMGU4OTIwMjI1NDM0OWQxYgotLSAKMi4zOS4yCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWls
aW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczov
L2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
