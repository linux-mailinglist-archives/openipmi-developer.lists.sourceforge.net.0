Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD57AF67B8
	for <lists+openipmi-developer@lfdr.de>; Thu,  3 Jul 2025 04:07:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xCgd5+RtYeS3A2BTNMVnWEFHNFukHMc2O3cheQjqE4g=; b=XsbFbWcnI4h6kS9H2Z8SekoIUu
	InttNymqKAp0MniBiH2SPa55cjru3LHsk0cifp8xugOMk4oQyVMU8ypJ2HYJAeT4sc5mS2LgZvU6o
	bsWcm5pnaZ+UYIcJKuuV6uOVKyZC2qkJ+MU+PwMT4URiZBMyjrw5kM+bVjK0AVrh1+mE=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uX9Ma-0000LU-Ef;
	Thu, 03 Jul 2025 02:07:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhoubb.aaron@gmail.com>) id 1uX9MY-0000LM-8s
 for openipmi-developer@lists.sourceforge.net;
 Thu, 03 Jul 2025 02:07:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UzkypJTa2aDOnGhEUSNksvIYvW5r2jEVvJtvSkexsCs=; b=Vm+iRQR5Rjw4A+n3FfhZuqQ81I
 Xeq9f3YMF9enrHsFr/QFZv5U5rmZnTfNiXj4/odk2TOUe0Ld8ZsEhHH9Ype/050PMcjYnrgYxWv/q
 GM3tuVzcmNOcfhh649JDmq8gr0mYxSscMleWTzaic+3afmey78ksudGS5KzK8fJpWgxE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UzkypJTa2aDOnGhEUSNksvIYvW5r2jEVvJtvSkexsCs=; b=VwjK3VEumz1407OseT2TlVmuhy
 4eUEvw98jokb/aOITc6Mnv+pc/IJS5D2QCZdjrpyWgI33P4wrKBD7oQtf32/0rRnWb64MjwIFxWkT
 wyKRVx737w1Gykee52vEkyGIF4O3lljuojtFdPGESWmHmSi1KFLgWyCVI1GDcs7Pdqf4=;
Received: from mail-ed1-f41.google.com ([209.85.208.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uX9MX-0002At-P1 for openipmi-developer@lists.sourceforge.net;
 Thu, 03 Jul 2025 02:07:46 +0000
Received: by mail-ed1-f41.google.com with SMTP id
 4fb4d7f45d1cf-60cc11b34f6so836573a12.0
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 02 Jul 2025 19:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1751508459; x=1752113259; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=UzkypJTa2aDOnGhEUSNksvIYvW5r2jEVvJtvSkexsCs=;
 b=O3xAXydJ5j+er6w8BgoW+v3EUyN9CPgbmo5GFRVltvImssUcpA5QBobZyv1c8nPyje
 JAGAeqTo/suYoqPjH1oMAPRrmLNIQdV2r3BjQp2x/vJxbMaf9UWb6GHY+L8cyeZbX9H9
 XwWpmUIUDr6XQF+wocYsEZudOKrJqeZFFxEkQxq1g9kmPmfs9VfRnBL01v0VuorXO77L
 M4zrBx6mR23ZnHpLuDeQvl+EPIziwHYsMj8tLrewN/IKgQFKv8rZ0Kqs0K+CVHsxi58n
 JaQOWbUUcBinAODWAaHFlsA802XCRW22/hnuVYEue8zVSL93pxXYoqokQyy2j5Hq0ROI
 ZAqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751508459; x=1752113259;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=UzkypJTa2aDOnGhEUSNksvIYvW5r2jEVvJtvSkexsCs=;
 b=Kn6hzFhf532LKj8e6sD1MXzjqVUvG3dzWRr+OSXcF1IX4U4DUJmqSPLEOxvWdV9XC9
 d4NnY3GlRSFZY4xWHOlBEe6VpmecyTGWkVMPRB9QG9WMhLH6y1+ZlCDH0zbEYtz1vb6m
 NcXdpeNnBxvX4QrRVi+dJXzgBZS22wS5aZTG2Auvf6sIoRVYiwbu5NuNiqJhvoq35HDa
 1sD7Hz/t1xdr2yGxxOwVg4+fPMYziuePOOg0eagp5VyQwYmj9XbwQYlA8Wki2kyfyZZZ
 aKwNJxLKPyuE7OlH1Ew75uMdWdiN4WmF+6GKDCveLfz3OKFq+nRaG3QVBYFK6NkHvPnG
 zOQA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUwPg7ITBpg79uieRG6rEaypLlQorKSjiUtCKd2oYnG4JNLaqUHb9GGZx3BZeDRYhP/KZVfD77iGahg4RUaZYpyuNY=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yz627b8+KDP3i5wjlfMfciNu9ejdpYEmH0774egKM0Gzhu/rE7B
 PbiDp+qgxaEBv25UVW6DRZAGeBUBg/QyLfF9SBeE3ZqvWo+w5QaXkmdlYYe//hHjS1gM8WfJTGF
 rlEQrqCwcAz7rsmhl+85KLCXXX2sCSAI=
X-Gm-Gg: ASbGncuBaUmT0XPeJZPG/dMSKm4bCwAHsH8Yp4U44twyey0cK89crvltXjzqvnYAbpQ
 R6dLTcK9VM2dlmVUT2PEsvxZ2hFru1k1A3fxX+Cu4/hMA3w/IziGa62i74fw3CtFQ7fgCjLfBfM
 Wn5djfuV+oB0nQnexphwaBmr9WJwSCA0pK8lH8qiwyhw==
X-Google-Smtp-Source: AGHT+IF218GiZpeI/D+rXXzILlAv1cDE70/cS0aOmmY37xRfNjnVhepbNq4j1eM5FlQuPv33Nwb46LfderGxoJgZ+S8=
X-Received: by 2002:a17:907:1c97:b0:ae3:c777:6e5e with SMTP id
 a640c23a62f3a-ae3dd25aca9mr88160166b.19.1751508458811; Wed, 02 Jul 2025
 19:07:38 -0700 (PDT)
MIME-Version: 1.0
References: <78b06d1c7ae0677868e0c7498b589af163313c8d.1750939357.git.zhoubinbin@loongson.cn>
 <202507021011.sDAHGinj-lkp@intel.com> <20250702162318.GZ10134@google.com>
In-Reply-To: <20250702162318.GZ10134@google.com>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Thu, 3 Jul 2025 10:07:26 +0800
X-Gm-Features: Ac12FXxvQYgSR_pb1CaQhAd5356-n99IGXBSgkWflU0a6alpsxti5PcQ-gLfDuE
Message-ID: <CAMpQs4+hrJ8B4wZRmCH2T7wLAwnmD8_WH2OpNLWH64AbanZ-pw@mail.gmail.com>
To: Lee Jones <lee@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Lee: On Thu, Jul 3, 2025 at 12:23 AM Lee Jones wrote: >
 > On Wed, 02 Jul 2025, kernel test robot wrote: > > > Hi Binbin, > > > >
 kernel test robot noticed the following build errors: > > > > [auto build
 [...] Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [zhoubb.aaron(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.41 listed in wl.mailspike.net]
X-Headers-End: 1uX9MX-0002At-P1
Subject: Re: [Openipmi-developer] [PATCH v6 2/3] mfd: ls2kbmc: Add
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
Cc: Chong Qiao <qiaochong@loongson.cn>, jeffbai@aosc.io,
 kernel test robot <lkp@intel.com>, Corey Minyard <minyard@acm.org>,
 Binbin Zhou <zhoubinbin@loongson.cn>, kexybiscuit@aosc.io, wangyao@lemote.com,
 linux-kernel@vger.kernel.org, loongarch@lists.linux.dev,
 oe-kbuild-all@lists.linux.dev, Xuerui Wang <kernel@xen0n.name>,
 openipmi-developer@lists.sourceforge.net, Huacai Chen <chenhuacai@loongson.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGkgTGVlOgoKT24gVGh1LCBKdWwgMywgMjAyNSBhdCAxMjoyM+KAr0FNIExlZSBKb25lcyA8bGVl
QGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gV2VkLCAwMiBKdWwgMjAyNSwga2VybmVsIHRlc3Qg
cm9ib3Qgd3JvdGU6Cj4KPiA+IEhpIEJpbmJpbiwKPiA+Cj4gPiBrZXJuZWwgdGVzdCByb2JvdCBu
b3RpY2VkIHRoZSBmb2xsb3dpbmcgYnVpbGQgZXJyb3JzOgo+ID4KPiA+IFthdXRvIGJ1aWxkIHRl
c3QgRVJST1Igb24gM2Q3N2IzY2M3Y2M4MTE1ZDg5ZmExNGVhZjYwMWU1NjM3Mjk1MzQ4NF0KPiA+
Cj4gPiB1cmw6ICAgIGh0dHBzOi8vZ2l0aHViLmNvbS9pbnRlbC1sYWItbGtwL2xpbnV4L2NvbW1p
dHMvQmluYmluLVpob3UvbWZkLWxzMmtibWMtSW50cm9kdWNlLUxvb25nc29uLTJLLUJNQy1jb3Jl
LWRyaXZlci8yMDI1MDYyNi0yMDMzNTMKPiA+IGJhc2U6ICAgM2Q3N2IzY2M3Y2M4MTE1ZDg5ZmEx
NGVhZjYwMWU1NjM3Mjk1MzQ4NAo+ID4gcGF0Y2ggbGluazogICAgaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvci83OGIwNmQxYzdhZTA2Nzc4NjhlMGM3NDk4YjU4OWFmMTYzMzEzYzhkLjE3NTA5Mzkz
NTcuZ2l0Lnpob3ViaW5iaW4lNDBsb29uZ3Nvbi5jbgo+ID4gcGF0Y2ggc3ViamVjdDogW1BBVENI
IHY2IDIvM10gbWZkOiBsczJrYm1jOiBBZGQgTG9vbmdzb24tMksgQk1DIHJlc2V0IGZ1bmN0aW9u
IHN1cHBvcnQKPiA+IGNvbmZpZzogc3BhcmM2NC1hbGxtb2Rjb25maWcgKGh0dHBzOi8vZG93bmxv
YWQuMDEub3JnLzBkYXktY2kvYXJjaGl2ZS8yMDI1MDcwMi8yMDI1MDcwMjEwMTEuc0RBSEdpbmot
bGtwQGludGVsLmNvbS9jb25maWcpCj4gPiBjb21waWxlcjogc3BhcmM2NC1saW51eC1nY2MgKEdD
QykgMTUuMS4wCj4gPiByZXByb2R1Y2UgKHRoaXMgaXMgYSBXPTEgYnVpbGQpOiAoaHR0cHM6Ly9k
b3dubG9hZC4wMS5vcmcvMGRheS1jaS9hcmNoaXZlLzIwMjUwNzAyLzIwMjUwNzAyMTAxMS5zREFI
R2luai1sa3BAaW50ZWwuY29tL3JlcHJvZHVjZSkKPiA+Cj4gPiBJZiB5b3UgZml4IHRoZSBpc3N1
ZSBpbiBhIHNlcGFyYXRlIHBhdGNoL2NvbW1pdCAoaS5lLiBub3QganVzdCBhIG5ldyB2ZXJzaW9u
IG9mCj4gPiB0aGUgc2FtZSBwYXRjaC9jb21taXQpLCBraW5kbHkgYWRkIGZvbGxvd2luZyB0YWdz
Cj4gPiB8IFJlcG9ydGVkLWJ5OiBrZXJuZWwgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4KPiA+
IHwgQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9vZS1rYnVpbGQtYWxsLzIwMjUwNzAy
MTAxMS5zREFIR2luai1sa3BAaW50ZWwuY29tLwo+ID4KPiA+IEFsbCBlcnJvcnMgKG5ldyBvbmVz
IHByZWZpeGVkIGJ5ID4+KToKPiA+Cj4gPiAgICBkcml2ZXJzL21mZC9sczJrLWJtYy1jb3JlLmM6
IEluIGZ1bmN0aW9uICdsczJrX2JtY19wZGF0YV9pbml0aWFsJzoKPiA+ID4+IGRyaXZlcnMvbWZk
L2xzMmstYm1jLWNvcmUuYzozNDk6MTU6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBm
dW5jdGlvbiAnYWNwaV9yZWdpc3Rlcl9nc2knIFstV2ltcGxpY2l0LWZ1bmN0aW9uLWRlY2xhcmF0
aW9uXQo+ID4gICAgICAzNDkgfCAgICAgICAgIGlycSA9IGFjcGlfcmVnaXN0ZXJfZ3NpKE5VTEws
IGdzaSwgQUNQSV9FREdFX1NFTlNJVElWRSwgQUNQSV9BQ1RJVkVfTE9XKTsKPiA+ICAgICAgICAg
IHwgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fgo+ID4gPj4gZHJpdmVycy9tZmQvbHMy
ay1ibWMtY29yZS5jOjM3Njo5OiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVuY3Rp
b24gJ2FjcGlfdW5yZWdpc3Rlcl9nc2knOyBkaWQgeW91IG1lYW4gJ2FyY2hfdW5yZWdpc3Rlcl9j
cHUnPyBbLVdpbXBsaWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0KPiA+ICAgICAgMzc2IHwgICAg
ICAgICBhY3BpX3VucmVnaXN0ZXJfZ3NpKGdzaSk7Cj4gPiAgICAgICAgICB8ICAgICAgICAgXn5+
fn5+fn5+fn5+fn5+fn5+fgo+ID4gICAgICAgICAgfCAgICAgICAgIGFyY2hfdW5yZWdpc3Rlcl9j
cHUKPgo+IElzIHRoaXMgZXJyb3IgdmFsaWQ/CgpFbW0uLi4KClRoaXMgZXJyb3IgZG9lcyBleGlz
dCBpZiBBQ1BJX0dFTkVSSUNfR1NJIGlzIG5vdCBzZWxlY3RlZC4KSSB3aWxsIGFkZCB0aGlzIGRl
cGVuZGVuY3kgaW4gdGhlIG5leHQgdmVyc2lvbi4KCmRlcGVuZHMgb24gUENJICYmIEFDUElfR0VO
RVJJQ19HU0kKCj4KPiAtLQo+IExlZSBKb25lcyBb5p2O55C85pavXQoKLS0gClRoYW5rcy4KQmlu
YmluCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3Bl
bmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L29wZW5pcG1pLWRldmVsb3Blcgo=
