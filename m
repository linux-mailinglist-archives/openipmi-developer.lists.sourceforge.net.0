Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7932892AA85
	for <lists+openipmi-developer@lfdr.de>; Mon,  8 Jul 2024 22:25:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sQuvh-0005F0-Sx;
	Mon, 08 Jul 2024 20:25:46 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ukleinek@baylibre.com>) id 1sQqsy-0001V4-Hz
 for openipmi-developer@lists.sourceforge.net;
 Mon, 08 Jul 2024 16:06:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kHgtTL2FfpKC9CyIQDhTjdFjuHR6UF0FQp0swFLrjK0=; b=ggV9ygExNvnSYlH262dON6JUl8
 qmKBgMAh8DiZgoyvO/sJt2nbxbf3g7DQNcXWKXhw/qUH5DeT8z52waRx+TeG2r1hqvU0F5LCXs/0Q
 zxiRm3x7IJTsAlu5j63wMQ961bwz6uRb/lhEHk0KMT3gUNrMopS7+h3huyCPVdCuSYf4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=kHgtTL2FfpKC9CyIQDhTjdFjuHR6UF0FQp0swFLrjK0=; b=M
 5Fk3iko8QelvxXtOne9lCA6/csUWEZjp3B3T5CFBd3UV0QuhVtHcIHlirju00nMlHlSs4TUgtp6XM
 EEeaAPgtKnSsTdG5emUQA0JAB79WutAg7jRsuwcOny8iRwT6NgDP8rYGfvInXk5S1+Cu+ZQWZR6Jw
 hJnBF4iLR7/FynTY=;
Received: from mail-ej1-f49.google.com ([209.85.218.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sQqsx-0005lZ-1C for openipmi-developer@lists.sourceforge.net;
 Mon, 08 Jul 2024 16:06:39 +0000
Received: by mail-ej1-f49.google.com with SMTP id
 a640c23a62f3a-a7527afa23cso515867966b.2
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 08 Jul 2024 09:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1720454787; x=1721059587;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=kHgtTL2FfpKC9CyIQDhTjdFjuHR6UF0FQp0swFLrjK0=;
 b=NWrz/uaJns8TkG485QKB5+OcM9UGRBZbqetzjy7u8vNdGG0VLzBgMEgxlb2VHpiqMM
 FMXCc6oS6n/q3TDq9DApts4S8GUwaaKUUl4bsnFznJy8mO4DqpSmPVsj6XTfKibm/ftR
 AQWW+dek3RCOCiwMGpRnU3qF96c58V24SpOFzKYAGxUV9lGGb8BOapDk5IVt1i8UeuoV
 uvo5xs3Zo1IgBazZHaXN2pppAXd/iPkX/zlcS3MkyrDJ4wjFb4u0Pfo7nSeoAJo84YYZ
 3QDSr5PpgFbdLeqDZ9KSkAYFP/RwPupZVzwk9xsvZ2fgiJ6XHyFFVN0FFhQCK1j8i4UO
 HS2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1720454787; x=1721059587;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=kHgtTL2FfpKC9CyIQDhTjdFjuHR6UF0FQp0swFLrjK0=;
 b=oV5lzdEvH7ODYwbl3r31PPYnYDcSgeJXnL8yKairixCPVhI424PAOYhoZoIiNT6+oA
 uKNAnouaGwhvZ0KpGzYgcr8mnaK+n1DAjUqIr0qqX12uzSv2TD42GgJGVAXFFUdPdxyv
 74kdsxFObZNV7FN+H3Vn0Zst5A3yJFL4i8QoDfG8O041eXAyJv+Qaih6UBQf/TNVhU7l
 9zytp5nl1BglPF8rmflHgWqguioJM13KYN/qRJQ4UHtOnl3fInWU505CXAQ6G2QplPv6
 /6XYs65tSBUnsZIw0I+koEN1z6tqvj7bakFgpM1vev26IfPxhhVIRRCPIDq6fRvuluRp
 taWA==
X-Gm-Message-State: AOJu0YyAE4HVITw3dadSoFJcDsGG5/LSRzNw8523nuC6kxPyoFcHW8rw
 ARvV7hphGXLWhhiBapVJxwa7lOQsOjtyaUDbBSgbRRekZ7m/r+ljpazBpMA9I3HOmbH3XdgIU0L
 8
X-Google-Smtp-Source: AGHT+IGiW1ylu5SZzpvnwzViTEuEF31TXpsB9Z00lg/QgYSpWYbmEawF+nKQio6UTA9xOeDqom8XUA==
X-Received: by 2002:a05:600c:4792:b0:426:60b8:d8ba with SMTP id
 5b1f17b1804b1-42660b8dc47mr46974655e9.28.1720451368238; 
 Mon, 08 Jul 2024 08:09:28 -0700 (PDT)
Received: from localhost
 (p200300f65f217d00930e0db224f9e8ed.dip0.t-ipconnect.de.
 [2003:f6:5f21:7d00:930e:db2:24f9:e8ed])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4266f741553sm1928195e9.40.2024.07.08.08.09.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jul 2024 08:09:26 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Corey Minyard <minyard@acm.org>
Date: Mon,  8 Jul 2024 17:09:12 +0200
Message-ID: <20240708150914.18190-2-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2468;
 i=u.kleine-koenig@baylibre.com; h=from:subject;
 bh=lqvT1dYN7ZB0d1qXnmXnxkWCk+h2U4ocW9vwYGH0lPg=;
 b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBmjAEa1x3j3S749weZMw9JNuLQsc+Xf30EazMyM
 j0/yOKeuJyJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZowBGgAKCRCPgPtYfRL+
 TlQuB/0cKnkxBNqRPN5unAJbHAmnW6lnWF7M9o+zgJeLhRwbiigzmXF+jmNG8U57A5AUOQjq5p/
 JzSTZmHMM+AbyVZVvKBmUuW81dZt9dndw2hgLBL4hTJ6ij5GMOUv0r50GLnKkWJRGBAON3KoD03
 /zpG8wOEr2gbKo1d6NUilM0/4gRxox2UGSjT/Z85tx3gFaTKDtK/dmbvbKBhtItm1EMXohtZ7KW
 WU1mPq5mkFmMHwg5AJv8fSqrklN1vJprKsrXZKfZo9pwLG3ypLS8ks/qWsU6W9fugk+WOpNrS3T
 irjPDWlqNyBR8ZwEdXaN9RwiwzRAzvN9DIDF3MpR+V+HoZcg
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp;
 fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: These drivers don't use the driver_data member of struct
 i2c_device_id, 
 so don't explicitly initialize this member. This prepares putting driver_data
 in an anonymous union which requires either no initialization or named
 designators. But it's also a nice cleanup on its own. 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [209.85.218.49 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.218.49 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.218.49 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.49 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sQqsx-0005lZ-1C
X-Mailman-Approved-At: Mon, 08 Jul 2024 20:25:45 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: Drop explicit initialization of
 struct i2c_device_id::driver_data to 0
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

VGhlc2UgZHJpdmVycyBkb24ndCB1c2UgdGhlIGRyaXZlcl9kYXRhIG1lbWJlciBvZiBzdHJ1Y3Qg
aTJjX2RldmljZV9pZCwKc28gZG9uJ3QgZXhwbGljaXRseSBpbml0aWFsaXplIHRoaXMgbWVtYmVy
LgoKVGhpcyBwcmVwYXJlcyBwdXR0aW5nIGRyaXZlcl9kYXRhIGluIGFuIGFub255bW91cyB1bmlv
biB3aGljaCByZXF1aXJlcwplaXRoZXIgbm8gaW5pdGlhbGl6YXRpb24gb3IgbmFtZWQgZGVzaWdu
YXRvcnMuIEJ1dCBpdCdzIGFsc28gYSBuaWNlCmNsZWFudXAgb24gaXRzIG93bi4KCldoaWxlIGF0
IGl0LCBhbHNvIHJlbW92ZSBjb21tYXMgYWZ0ZXIgdGhlIHNlbnRpbmVsIGVudHJpZXMuCgpTaWdu
ZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQGJheWxpYnJlLmNv
bT4KLS0tCiBkcml2ZXJzL2NoYXIvaXBtaS9pcG1iX2Rldl9pbnQuYyB8IDQgKystLQogZHJpdmVy
cy9jaGFyL2lwbWkvaXBtaV9pcG1iLmMgICAgfCA0ICsrLS0KIGRyaXZlcnMvY2hhci9pcG1pL2lw
bWlfc3NpZi5jICAgIHwgMiArLQogZHJpdmVycy9jaGFyL2lwbWkvc3NpZl9ibWMuYyAgICAgfCA0
ICsrLS0KIDQgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2hhci9pcG1pL2lwbWJfZGV2X2ludC5jIGIvZHJpdmVycy9j
aGFyL2lwbWkvaXBtYl9kZXZfaW50LmMKaW5kZXggNDkxMDA4NDVmY2I3Li43Mjk2MTI3MTgxZWMg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvY2hhci9pcG1pL2lwbWJfZGV2X2ludC5jCisrKyBiL2RyaXZl
cnMvY2hhci9pcG1pL2lwbWJfZGV2X2ludC5jCkBAIC0zNTAsOCArMzUwLDggQEAgc3RhdGljIHZv
aWQgaXBtYl9yZW1vdmUoc3RydWN0IGkyY19jbGllbnQgKmNsaWVudCkKIH0KIAogc3RhdGljIGNv
bnN0IHN0cnVjdCBpMmNfZGV2aWNlX2lkIGlwbWJfaWRbXSA9IHsKLQl7ICJpcG1iLWRldiIsIDAg
fSwKLQl7fSwKKwl7ICJpcG1iLWRldiIgfSwKKwl7fQogfTsKIE1PRFVMRV9ERVZJQ0VfVEFCTEUo
aTJjLCBpcG1iX2lkKTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9pcG1i
LmMgYi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX2lwbWIuYwppbmRleCA0ZTMzNTgzMmZjMjYuLjZh
NGYyNzljN2MxZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9pcG1iLmMKKysr
IGIvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9pcG1iLmMKQEAgLTU2MSw4ICs1NjEsOCBAQCBNT0RV
TEVfREVWSUNFX1RBQkxFKG9mLCBvZl9pcG1pX2lwbWJfbWF0Y2gpOwogI2VuZGlmCiAKIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgaTJjX2RldmljZV9pZCBpcG1pX2lwbWJfaWRbXSA9IHsKLQl7IERFVklD
RV9OQU1FLCAwIH0sCi0Je30sCisJeyBERVZJQ0VfTkFNRSB9LAorCXt9CiB9OwogTU9EVUxFX0RF
VklDRV9UQUJMRShpMmMsIGlwbWlfaXBtYl9pZCk7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2hh
ci9pcG1pL2lwbWlfc3NpZi5jIGIvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zc2lmLmMKaW5kZXgg
M2Y1MDlhMjIyMTdiLi45NmFkNTcxZDA0MWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvY2hhci9pcG1p
L2lwbWlfc3NpZi5jCisrKyBiL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfc3NpZi5jCkBAIC0yMDQ5
LDcgKzIwNDksNyBAQCBzdGF0aWMgaW50IGRtaV9pcG1pX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCiAjZW5kaWYKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBpMmNfZGV2aWNlX2lk
IHNzaWZfaWRbXSA9IHsKLQl7IERFVklDRV9OQU1FLCAwIH0sCisJeyBERVZJQ0VfTkFNRSB9LAog
CXsgfQogfTsKIE1PRFVMRV9ERVZJQ0VfVEFCTEUoaTJjLCBzc2lmX2lkKTsKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvY2hhci9pcG1pL3NzaWZfYm1jLmMgYi9kcml2ZXJzL2NoYXIvaXBtaS9zc2lmX2Jt
Yy5jCmluZGV4IGFiNGU4N2E5OWYwOC4uYTE0ZmFmYzU4M2Q0IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2NoYXIvaXBtaS9zc2lmX2JtYy5jCisrKyBiL2RyaXZlcnMvY2hhci9pcG1pL3NzaWZfYm1jLmMK
QEAgLTg1Miw4ICs4NTIsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBzc2lm
X2JtY19tYXRjaFtdID0gewogTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgc3NpZl9ibWNfbWF0Y2gp
OwogCiBzdGF0aWMgY29uc3Qgc3RydWN0IGkyY19kZXZpY2VfaWQgc3NpZl9ibWNfaWRbXSA9IHsK
LQl7IERFVklDRV9OQU1FLCAwIH0sCi0JeyB9LAorCXsgREVWSUNFX05BTUUgfSwKKwl7IH0KIH07
CiBNT0RVTEVfREVWSUNFX1RBQkxFKGkyYywgc3NpZl9ibWNfaWQpOwogCgpiYXNlLWNvbW1pdDog
MGI1OGUxMDgwNDJiMGVkMjhhNzFjZDdlZGY1MTc1OTk5OTU1YjIzMwotLSAKMi40My4wCgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRl
dmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdl
Lm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBt
aS1kZXZlbG9wZXIK
