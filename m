Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E44F3824A3B
	for <lists+openipmi-developer@lfdr.de>; Thu,  4 Jan 2024 22:24:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rLVBx-0002wQ-2d;
	Thu, 04 Jan 2024 21:23:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ct@flyingcircus.io>) id 1rLVBv-0002wJ-CI
 for openipmi-developer@lists.sourceforge.net;
 Thu, 04 Jan 2024 21:23:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:Cc:Date:Message-Id:Subject:Mime-Version:
 Content-Transfer-Encoding:Content-Type:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nIqWpPveYYzAB8mwNROQA/nOCGMZzCK9+WdtKlF7W2Y=; b=OSVjJf605o8xg/gK5uhwnyl5ij
 9wexzXmbPEXvKs0NVKZXrUzV+xF7ufv1xfNRbOF5um0VWyVKnvg869Yq0HepJo/L2B0zZYTS6049R
 o4K3cKTpxg9qKhXBIiVRiOVkR3maXCf68ApazgR/b2tCpW25r3/wck/qjJ0jKMsHM4yI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:Cc:Date:Message-Id:Subject:Mime-Version:Content-Transfer-Encoding:
 Content-Type:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=nIqWpPveYYzAB8mwNROQA/nOCGMZzCK9+WdtKlF7W2Y=; b=T
 qFyl1+FisYDjMUOA21FoghC47icahDuiE+nSn5CO5Opv5ONFtq2shZIjtciSe4yWtH9muqFbCBEfr
 5z0u9mfq9jqrgQpcFeTVT9sFN5wSaUblBHkbZWKoDMw8oc4HcXHcw3hPzeyhaMfLSnjJ1okoSHjJH
 OejXrYgwSJ4uIx/k=;
Received: from mail.flyingcircus.io ([212.122.41.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rLVBt-0003Ig-MX for openipmi-developer@lists.sourceforge.net;
 Thu, 04 Jan 2024 21:23:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flyingcircus.io;
 s=mail; t=1704402385;
 bh=nIqWpPveYYzAB8mwNROQA/nOCGMZzCK9+WdtKlF7W2Y=;
 h=From:Subject:Date:Cc:To;
 b=hIS/Cvhg/dNPWDbqSW7j1w7yIgK0aV4olbFbNmSvOyvEwlrlzkv7yrGArIPtwpj22
 cU/1KeZvw+smwICuSVMXsYxx5tuLw4+M3q46d6CIl483T+gwmgvN4xI+2E8P/PkvYi
 zLpG3zW4c+2HQEamwTA6jdRbvOyuVUxL3e5szuB0=
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.300.61.1.2\))
Message-Id: <6B6CC6CE-E142-4709-B442-86461A05DE03@flyingcircus.io>
Date: Thu, 4 Jan 2024 22:06:04 +0100
To: Christian Theune via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi everyone, Hi Corey, (I hope everyone had a good holiday
 season and made it healthy into 2024!) you might remember that I was chasing
 mysterious watchdog reboots without any specific issues being shown on the
 serial console or on the SEL. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rLVBt-0003Ig-MX
Subject: [Openipmi-developer] IPMI SEL vs. watchdog timeouts
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
From: Christian Theune via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Christian Theune <ct@flyingcircus.io>
Cc: Corey Minyard <minyard@acm.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGkgZXZlcnlvbmUsCkhpIENvcmV5LAoKKEkgaG9wZSBldmVyeW9uZSBoYWQgYSBnb29kIGhvbGlk
YXkgc2Vhc29uIGFuZCBtYWRlIGl0IGhlYWx0aHkgaW50byAyMDI0ISkKCnlvdSBtaWdodCByZW1l
bWJlciB0aGF0IEkgd2FzIGNoYXNpbmcgbXlzdGVyaW91cyB3YXRjaGRvZyByZWJvb3RzIHdpdGhv
dXQgYW55IHNwZWNpZmljIGlzc3VlcyBiZWluZyBzaG93biBvbiB0aGUgc2VyaWFsIGNvbnNvbGUg
b3Igb24gdGhlIFNFTC4KCkluIERlY2VtYmVyIHdlIHN0dW1ibGVkIG92ZXIgYW4gaW5zaWdodCB0
aGF0IGhhcyBnaXZlbiB1cyBhIHZhbHVhYmxlIGNsdWUuIFdlIGRpZCBoYXZlIGEgcmVkdWNlZCB0
aW1lb3V0IGZvciB0aGUgd2F0Y2hkb2cgdG8gdHJpZ2dlciAoNjAgc2Vjb25kcywgc3lzdGVtZCB3
YXMgc2lnbmFsbGluZyBldmVyeSAyMCBzZWNvbmRzKS4KCkkgKnRoaW5rKiB0aGlzIG1heSBoYXZl
IGxlYWQgdG8gZWl0aGVyIGZhbHNlIHBvc2l0aXZlcyAqT1IqIGp1c3QgcGxhaW5seSBzaGFkb3dl
ZCBsb2NrdXBzL3N0YWxscyB0aGF0IHRoZSBrZXJuZWwgbWlnaHQgaGF2ZSBpc3N1ZWQgYnV0IG5l
ZWRlZCBtb3JlIHRpbWUgZm9yIHRoZSBkZXRlY3RvcnMgdG8gZmluZCBhbmQgcmVwb3J0IHRoZW0u
CgpXZSBoYXZlIGluY3JlYXNlZCBvdXIgd2F0Y2hkb2cgdGltZW91dHMgdG8gNSBtaW51dGVzIG5v
dyBhbmQgaGF2ZSBldmVuIGRlY2lkZWQgdG8gcmVtb3ZlIHdhdGNoZG9ncyBmcm9tIEtWTSBob3N0
cyAoa2VlcGluZyB0aGVuIGVuYWJsZWQgb24gcm91dGVycywgYmFja3VwIHNlcnZlcnMgYW5kIENl
cGggc2VydmVycyBhcyB0aG9zZSB3aWxsIG5vdCBjYXVzZSBzZXJ2aWNlIGludGVycnVwdGlvbnMg
d2hlbiBhIHdhdGNoZG9nIGNvbWVzIGluKS4KCldl4oCZdmUgbm90IHNlZW4gYW4gYWN0dWFsIGxv
Y2sgdXAgLyBzdGFsbCBzaW5jZSB0aGUgbGFzdCAzIHdlZWtzLCB5ZXQsIGJ1dCBJIHRoaW5rIHdl
IGRpZCBzb2x2ZSBhIHNpZ25pZmljYW50IHBhcnQgb2YgdGhlIG15c3RlcnkgYW5kIG1heWJlIHJl
cG9ydGluZyBpdCBoZXJlIGhlbHBzIHJlY29yZGluZyBpdCBmb3IgcG9zdGVyaXR5IGFuZCBtaWdo
dCBoZWxwIHNvbWVvbmUgZWxzZSBpbiB0aGUgZnV0dXJlLgoKVGhhbmtzIGZvciB0aGUgaGVscCBz
byBmYXIhCkNocmlzdGlhbgoKLS0gCkNocmlzdGlhbiBUaGV1bmUgwrcgY3RAZmx5aW5nY2lyY3Vz
LmlvIMK3ICs0OSAzNDUgMjE5NDAxIDAKRmx5aW5nIENpcmN1cyBJbnRlcm5ldCBPcGVyYXRpb25z
IEdtYkggwrcgaHR0cHM6Ly9mbHlpbmdjaXJjdXMuaW8KTGVpcHppZ2VyIFN0ci4gNzAvNzEgwrcg
MDYxMDggSGFsbGUgKFNhYWxlKSDCtyBEZXV0c2NobGFuZApIUiBTdGVuZGFsIEhSQiAyMTE2OSDC
tyBHZXNjaMOkZnRzZsO8aHJlcjogQ2hyaXN0aWFuIFRoZXVuZSwgQ2hyaXN0aWFuIFphZ3JvZG5p
Y2sKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3Bl
bmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L29wZW5pcG1pLWRldmVsb3Blcgo=
