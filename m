Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A07E6EF9D4
	for <lists+openipmi-developer@lfdr.de>; Wed, 26 Apr 2023 20:10:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1prjaj-00057O-F2;
	Wed, 26 Apr 2023 18:10:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1prjai-00057H-1v
 for openipmi-developer@lists.sourceforge.net;
 Wed, 26 Apr 2023 18:10:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RliUpkr7G0qjHBFEov7zbIInpq/EheTg4CUqoVj5+Sk=; b=JU/oKOeUqOE96SiUptC0+A9wJj
 HtiRVlX7OUG0T/X8zBdVkKUP5f1vOAHnk11nXC9uwuTz9xs7kIJkH+O5Jp8vGieqlQ/NBlSFzRCX3
 7WaDGSm1a8URdFYFfwbvpx9kPu6hy/JQPzhnraE6fFdmI3LYLmOd5AfKmwJBsL53tM+A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=RliUpkr7G0qjHBFEov7zbIInpq/EheTg4CUqoVj5+Sk=; b=O
 3RdBkrpp1UmU7VfRZpcB7hiZgFNTtbqPfCe9kScFrOTU4R7h2rkwxLFJh3j/vTsuyE7exaedXNngh
 Mjab0q8lq59jYaqydoqmuaoXijO3rDfklq0FtDmg7yopeUGI0+sFDmlay1/jmC8evDdEjLc/MuIYw
 K+m7aiHE+L5r5LDI=;
Received: from mail-qv1-f43.google.com ([209.85.219.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1prjaf-0002aK-Aq for openipmi-developer@lists.sourceforge.net;
 Wed, 26 Apr 2023 18:10:07 +0000
Received: by mail-qv1-f43.google.com with SMTP id
 6a1803df08f44-5ef6ddd0498so73121616d6.3
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 26 Apr 2023 11:10:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682532599; x=1685124599;
 h=content-transfer-encoding:content-disposition:mime-version:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=RliUpkr7G0qjHBFEov7zbIInpq/EheTg4CUqoVj5+Sk=;
 b=lFkXN3iDuzgJgPb1QBydHfhgIuw/alSNaRURMYZTVareNCG5hRMiGBKPfHqrvxkIDr
 WZIdTIZOaOPaXUr78gWDVjOmzP/F3AFRYmUXPA79BH51eybI+TNvxmC+1QVVAeWe073P
 Qv7wXe/1aLnR69N43boBYLL2BVKBrbA6vinLJGNTiDuhfVXzj1+mZIG6p+2KzHC9xJxH
 R5xJBJI6DngqIlcNMspfcVYyhtfdy2E02r+BkZIoWb5hM3K3sH26upf1PHfKP4doNxEe
 KvhJHSpjMfpiFNBJIhjg7y4TJOgUNhjOfMWGNlJY+FP9M9gjgqn2mevuX416Iuo3i4cw
 vwTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682532599; x=1685124599;
 h=content-transfer-encoding:content-disposition:mime-version:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=RliUpkr7G0qjHBFEov7zbIInpq/EheTg4CUqoVj5+Sk=;
 b=O+9XeLpEg8LeGFnxf+sqcmVrREmGHiPqMkpJ+auFzJ9sJ5HHKCzuw0ou4P3niynSrt
 vqVrKmD7UWyMPBkDY8qYsItLLl5pm9c5OYmZq+8ftdEBl+CGs5jNZRxGFzOHHuiC0yRD
 yniCcd7Wm1SPwJ9UWUOa25j/MaEdsAi6Di2vxy7TP9HrW3ksr6tivubJz+kQUzF32z5V
 7vZaCXOgj+DoaM/a5MxxPeXfh69Lr9DDhZeD0XXxTujRCntQBsLozzUZvPV0cCX615VM
 GU2qbMIspd+11spNCo/S5q53d0sZ9D+ZUoVWr5/cELM1uj30HPsTLkNKsUNJLDuLmpPJ
 Nd6A==
X-Gm-Message-State: AAQBX9d05qLg9N1HE4Jtt3iVE/wlnDXfrjIS1thpBB21K2GRPjpiZmH6
 mAo/ZHN2gw25YSlrCpZfkA==
X-Google-Smtp-Source: AKy350YbHGj8VbYC419CT9o2eijYTCDvIIqMfvcFa9OU7XODwnmcKsIdb+lsOZDEqEnxGdg9jV48yQ==
X-Received: by 2002:ad4:5ceb:0:b0:5f0:128f:2a66 with SMTP id
 iv11-20020ad45ceb000000b005f0128f2a66mr37975860qvb.28.1682532599318; 
 Wed, 26 Apr 2023 11:09:59 -0700 (PDT)
Received: from serve.minyard.net ([47.184.185.84])
 by smtp.gmail.com with ESMTPSA id
 cf23-20020a05622a401700b003ef58044a4bsm5166482qtb.34.2023.04.26.11.09.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Apr 2023 11:09:58 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:772b:130b:d11f:1565])
 by serve.minyard.net (Postfix) with ESMTPSA id CDFFE180011;
 Wed, 26 Apr 2023 18:09:57 +0000 (UTC)
Date: Wed, 26 Apr 2023 13:09:56 -0500
From: Corey Minyard <minyard@acm.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <ZElo9Dgm1JV80b3h@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Pull request: The following changes since commit
 982818426a0ffaf93b0621826ed39a84be3d7d62:
 Merge tag 'arm-fixes-6.3-1' of
 git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc
 (2023-02-27 10:09:40 -0800) 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.43 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.43 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1prjaf-0002aK-Aq
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 6.4
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
Reply-To: minyard@acm.org
Cc: openipmi-developer@lists.sourceforge.net,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

UHVsbCByZXF1ZXN0OgotLS0tLS0tLS0tLS0tClRoZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBj
b21taXQgOTgyODE4NDI2YTBmZmFmOTNiMDYyMTgyNmVkMzlhODRiZTNkN2Q2MjoKCiAgTWVyZ2Ug
dGFnICdhcm0tZml4ZXMtNi4zLTEnIG9mIGdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGlu
dXgva2VybmVsL2dpdC9zb2Mvc29jICgyMDIzLTAyLTI3IDEwOjA5OjQwIC0wODAwKQoKYXJlIGF2
YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6CgogIGh0dHBzOi8vZ2l0aHViLmNvbS9j
bWlueWFyZC9saW51eC1pcG1pLmdpdCB0YWdzL2Zvci1saW51cy02LjQtMQoKZm9yIHlvdSB0byBm
ZXRjaCBjaGFuZ2VzIHVwIHRvIGQwODA3NjY3OGNlNzIxNDBhNDA1NTNkMjI2ZjkwZDE4OWZiZTA2
ZDE6CgogIGlwbWk6c3NpZjogRHJvcCBpZiBibG9ja3Mgd2l0aCBhbHdheXMgZmFsc2UgY29uZGl0
aW9uICgyMDIzLTA0LTEyIDExOjEzOjI2IC0wNTAwKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpNaW5vciBidWcgZml4ZXMg
Zm9yIHRoZSBJUE1JIGRyaXZlcgoKVGhlcmUgd2FzIGEgYnVnIGluIHRoZSBTU0lGIGRyaXZlciB3
aGVyZSBpbiBjZXJ0YWluIGNvbmRpdGlvbnMgaXQgY291bGQKc3RvcCB3b3JraW5nLgoKT3V0c2lk
ZSBvZiB0aGF0OiBzcGVsbGluZyBmaXhlcywgcmVtb3Zpbmcgc29tZSBkZWFkIGNvZGUsIHJlLWFk
ZGluZyBhCm1pc3Npbmcgc3RhdGlzdGljIGluY3JlbWVudCwgYW5kIHJlbW92YWwgb2YgcmVnaXN0
ZXJfc3lzY3RsX3RhYmxlKCkuCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkNvcmV5IE1pbnlhcmQgKDEpOgogICAgICBpcG1p
OnNzaWY6IEFkZCBzZW5kX3JldHJpZXMgaW5jcmVtZW50CgpMdWlzIENoYW1iZXJsYWluICgxKToK
ICAgICAgaXBtaTogc2ltcGxpZnkgc3lzY3RsIHJlZ2lzdHJhdGlvbgoKUmFuZHkgRHVubGFwICgx
KToKICAgICAgaXBtaTogQVNQRUVEX0JUX0lQTUlfQk1DOiBzZWxlY3QgUkVHTUFQX01NSU8gaW5z
dGVhZCBvZiBkZXBlbmRpbmcgb24gaXQKClV3ZSBLbGVpbmUtS8O2bmlnICgxKToKICAgICAgaXBt
aTpzc2lmOiBEcm9wIGlmIGJsb2NrcyB3aXRoIGFsd2F5cyBmYWxzZSBjb25kaXRpb24KClpoYW5n
IFl1Y2hlbiAoMSk6CiAgICAgIGlwbWk6IGZpeCBTU0lGIG5vdCByZXNwb25kaW5nIHVuZGVyIGNl
cnRhaW4gY29uZC4KCnppcGVuZyB6aGFuZyAoMSk6CiAgICAgIGNoYXI6aXBtaTpGaXggc3BlbGxp
bmcgbWlzdGFrZSAiYXN5Y2hyb25vdXNseSIgLT4gImFzeW5jaHJvbm91c2x5IgoKIGRyaXZlcnMv
Y2hhci9pcG1pL0tjb25maWcgICAgICAgICB8ICAzICsrLQogZHJpdmVycy9jaGFyL2lwbWkvaXBt
aV9wb3dlcm9mZi5jIHwgMTYgKy0tLS0tLS0tLS0tLS0tLQogZHJpdmVycy9jaGFyL2lwbWkvaXBt
aV9zc2lmLmMgICAgIHwgMTYgKysrKysrLS0tLS0tLS0tLQogMyBmaWxlcyBjaGFuZ2VkLCA5IGlu
c2VydGlvbnMoKyksIDI2IGRlbGV0aW9ucygtKQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9w
ZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
