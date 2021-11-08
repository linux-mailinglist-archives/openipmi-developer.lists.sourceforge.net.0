Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E6FA14480F4
	for <lists+openipmi-developer@lfdr.de>; Mon,  8 Nov 2021 15:07:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mk5J9-0004Tm-E4; Mon, 08 Nov 2021 14:07:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <geert.uytterhoeven@gmail.com>) id 1mk5J0-0004Sv-Hz
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Nov 2021 14:07:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=srssYsTsVb5ivMDmTAt6Y7lXgP/lHHGiJX97jzZpFII=; b=LnIHLQ2ufokGH405/WOeD5fyFK
 l2VICBWXRsFK6bqbY1wEpHH2QT+V76xAzfO8AHA5Vrb5iu7unxEzIdl5vaQ3B4ZNIN7bKh3rb7C07
 BDB+H/VsPgx/uHWfjVur8ruhITAHIrtTQOO5shW70pdrwk5zXwFpVtV0EhgXPJw3HVV8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=srssYsTsVb5ivMDmTAt6Y7lXgP/lHHGiJX97jzZpFII=; b=nDgC5q9vWeFuoWjAQDQqyX0MzR
 yD5juqxSy0dIJ8YCIwevPFMUwc/ZOHRIqjgNaVHOmd788TWm88bbdJABU13pR6JJ9Jn/wwywonUAU
 FWfNrDsZHpjomxYFnOTSIAikoaI5CMgJuf6kkh0UIT2/JEjlIznvptDfNydLi2tBsulY=;
Received: from mail-ua1-f50.google.com ([209.85.222.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mk5Iv-0068Lk-Du
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Nov 2021 14:07:23 +0000
Received: by mail-ua1-f50.google.com with SMTP id t13so16354738uad.9
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 08 Nov 2021 06:07:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=srssYsTsVb5ivMDmTAt6Y7lXgP/lHHGiJX97jzZpFII=;
 b=TzyhhUflYvt/h7bbNLChsqZk6H1BkLNBCQ3O+9m5yNb4aa03dZ+eF29VOURXfnqGZ9
 vKSHZVDNMuVFKFlCnowt3tDeiTNb3i/5Oi4W2LSqgX/0KIDU/F5NyJsK/aW/jtcO/1T3
 kzUilI5QHhoMCu0yFs3vJnc6ZyY94cZRCMTFRc55cfWDZPh739FsQLZUmfJ7mLtaxali
 KMLKzbZUO+WFpVLXD0bUH1BF4LO0+4nXaJk508JS7MMHyho401IzhmlP0UzcYuXQk4jr
 fH0URgyKVVh4dD2rJDfTtqsBwZoKMbWxBw5ZhCg8cxBXMMRDB1g+J9QNxIJf4xNgE/H3
 xrmA==
X-Gm-Message-State: AOAM531/CeJmNF/iJIOlAaYOLe4NGRo1yW/NasjKuIamMYq29ln0IrDs
 4xn4/UxcB0kQifUzqPYWB0W1FwyxEc+jlpzh
X-Google-Smtp-Source: ABdhPJzWLU7sL2H27BtkECTf71MihUKkRdIlN4bfJAxDkOfkb9DpwhzPc9GJr0WrhrH4ssU7O9iRXw==
X-Received: by 2002:a05:6102:3047:: with SMTP id
 w7mr89400361vsa.30.1636380435480; 
 Mon, 08 Nov 2021 06:07:15 -0800 (PST)
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com.
 [209.85.221.178])
 by smtp.gmail.com with ESMTPSA id q8sm2768527uae.10.2021.11.08.06.07.14
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Nov 2021 06:07:14 -0800 (PST)
Received: by mail-vk1-f178.google.com with SMTP id b192so2611068vkf.3
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 08 Nov 2021 06:07:14 -0800 (PST)
X-Received: by 2002:a05:6122:1350:: with SMTP id
 f16mr21288847vkp.26.1636380434409; 
 Mon, 08 Nov 2021 06:07:14 -0800 (PST)
MIME-Version: 1.0
References: <20211108101157.15189-1-bp@alien8.de>
 <20211108101157.15189-43-bp@alien8.de>
In-Reply-To: <20211108101157.15189-43-bp@alien8.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 8 Nov 2021 15:07:03 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWH+txiSP_d7Jc4f_bU8Lf9iWpT4E3o5o7BJr-YdA6-VA@mail.gmail.com>
Message-ID: <CAMuHMdWH+txiSP_d7Jc4f_bU8Lf9iWpT4E3o5o7BJr-YdA6-VA@mail.gmail.com>
To: Borislav Petkov <bp@alien8.de>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Borislav, On Mon, Nov 8, 2021 at 11:13 AM Borislav Petkov
 <bp@alien8.de> wrote: > From: Borislav Petkov <bp@suse.de> > > The notifier
 registration routine doesn't return a proper error value > when a callback
 h [...] Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.50 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.50 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mk5Iv-0068Lk-Du
Subject: Re: [Openipmi-developer] [PATCH v0 42/42] notifier: Return an error
 when callback is already registered
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
Cc: ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 Linux-sh list <linux-sh@vger.kernel.org>, linux-iio@vger.kernel.org,
 "open list:REMOTE PROCESSOR \(REMOTEPROC\) SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>, linux-hyperv@vger.kernel.org,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 netdev <netdev@vger.kernel.org>, Ayush Sawal <ayush.sawal@chelsio.com>,
 sparclinux <sparclinux@vger.kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 linux-leds <linux-leds@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, scsi <linux-scsi@vger.kernel.org>,
 Rohit Maheshwari <rohitm@chelsio.com>, linux-staging@lists.linux.dev,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 openipmi-developer@lists.sourceforge.net, xen-devel@lists.xenproject.org,
 "open list:TENSILICA XTENSA PORT \(xtensa\)" <linux-xtensa@linux-xtensa.org>,
 Arnd Bergmann <arnd@arndb.de>, Linux PM list <linux-pm@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Vinay Kumar Yadav <vinay.yadav@chelsio.com>,
 linux-um <linux-um@lists.infradead.org>, Steven Rostedt <rostedt@goodmis.org>,
 rcu@vger.kernel.org,
 Linux Fbdev development list <linux-fbdev@vger.kernel.org>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, intel-gvt-dev@lists.freedesktop.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org,
 Parisc List <linux-parisc@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 USB list <linux-usb@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 alpha <linux-alpha@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGkgQm9yaXNsYXYsCgpPbiBNb24sIE5vdiA4LCAyMDIxIGF0IDExOjEzIEFNIEJvcmlzbGF2IFBl
dGtvdiA8YnBAYWxpZW44LmRlPiB3cm90ZToKPiBGcm9tOiBCb3Jpc2xhdiBQZXRrb3YgPGJwQHN1
c2UuZGU+Cj4KPiBUaGUgbm90aWZpZXIgcmVnaXN0cmF0aW9uIHJvdXRpbmUgZG9lc24ndCByZXR1
cm4gYSBwcm9wZXIgZXJyb3IgdmFsdWUKPiB3aGVuIGEgY2FsbGJhY2sgaGFzIGFscmVhZHkgYmVl
biByZWdpc3RlcmVkLCBsZWFkaW5nIHBlb3BsZSB0byB0cmFjawo+IHdoZXRoZXIgdGhhdCByZWdp
c3RyYXRpb24gaGFzIGhhcHBlbmVkIGF0IHRoZSBjYWxsIHNpdGU6Cj4KPiAgIGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2FtZC1nZngvMjAyMTA1MTIwMTMwNTguNjgyNy0xLW11a3VsLmpvc2hpQGFt
ZC5jb20vCj4KPiBXaGljaCBpcyB1bm5lY2Vzc2FyeS4KPgo+IFJldHVybiAtRUVYSVNUIHRvIHNp
Z25hbCB0aGF0IGNhc2Ugc28gdGhhdCBjYWxsZXJzIGNhbiBhY3QgYWNjb3JkaW5nbHkuCj4gRW5m
b3JjZSBjYWxsZXJzIHRvIGNoZWNrIHRoZSByZXR1cm4gdmFsdWUsIGxlYWRpbmcgdG8gbG91ZCBz
Y3JlYW1pbmcKPiBkdXJpbmcgYnVpbGQ6Cj4KPiAgIGFyY2gveDg2L2tlcm5lbC9jcHUvbWNlL2Nv
cmUuYzogSW4gZnVuY3Rpb24g4oCYbWNlX3JlZ2lzdGVyX2RlY29kZV9jaGFpbuKAmToKPiAgIGFy
Y2gveDg2L2tlcm5lbC9jcHUvbWNlL2NvcmUuYzoxNjc6MjogZXJyb3I6IGlnbm9yaW5nIHJldHVy
biB2YWx1ZSBvZiBcCj4gICAg4oCYYmxvY2tpbmdfbm90aWZpZXJfY2hhaW5fcmVnaXN0ZXLigJks
IGRlY2xhcmVkIHdpdGggYXR0cmlidXRlIHdhcm5fdW51c2VkX3Jlc3VsdCBbLVdlcnJvcj11bnVz
ZWQtcmVzdWx0XQo+ICAgICBibG9ja2luZ19ub3RpZmllcl9jaGFpbl9yZWdpc3RlcigmeDg2X21j
ZV9kZWNvZGVyX2NoYWluLCBuYik7Cj4gICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPgo+IERyb3AgdGhlIFdBUk4gdG9vLCB3aGls
ZSBhdCBpdC4KPgo+IFN1Z2dlc3RlZC1ieTogVGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9u
aXguZGU+Cj4gU2lnbmVkLW9mZi1ieTogQm9yaXNsYXYgUGV0a292IDxicEBzdXNlLmRlPgoKVGhh
bmtzIGZvciB5b3VyIHBhdGNoIQoKPiAtLS0gYS9pbmNsdWRlL2xpbnV4L25vdGlmaWVyLmgKPiAr
KysgYi9pbmNsdWRlL2xpbnV4L25vdGlmaWVyLmgKPiBAQCAtMTQxLDEzICsxNDEsMTMgQEAgZXh0
ZXJuIHZvaWQgc3JjdV9pbml0X25vdGlmaWVyX2hlYWQoc3RydWN0IHNyY3Vfbm90aWZpZXJfaGVh
ZCAqbmgpOwo+Cj4gICNpZmRlZiBfX0tFUk5FTF9fCj4KPiAtZXh0ZXJuIGludCBhdG9taWNfbm90
aWZpZXJfY2hhaW5fcmVnaXN0ZXIoc3RydWN0IGF0b21pY19ub3RpZmllcl9oZWFkICpuaCwKPiAr
ZXh0ZXJuIGludCBfX211c3RfY2hlY2sgYXRvbWljX25vdGlmaWVyX2NoYWluX3JlZ2lzdGVyKHN0
cnVjdCBhdG9taWNfbm90aWZpZXJfaGVhZCAqbmgsCj4gICAgICAgICAgICAgICAgIHN0cnVjdCBu
b3RpZmllcl9ibG9jayAqbmIpOwo+IC1leHRlcm4gaW50IGJsb2NraW5nX25vdGlmaWVyX2NoYWlu
X3JlZ2lzdGVyKHN0cnVjdCBibG9ja2luZ19ub3RpZmllcl9oZWFkICpuaCwKPiArZXh0ZXJuIGlu
dCBfX211c3RfY2hlY2sgYmxvY2tpbmdfbm90aWZpZXJfY2hhaW5fcmVnaXN0ZXIoc3RydWN0IGJs
b2NraW5nX25vdGlmaWVyX2hlYWQgKm5oLAo+ICAgICAgICAgICAgICAgICBzdHJ1Y3Qgbm90aWZp
ZXJfYmxvY2sgKm5iKTsKPiAtZXh0ZXJuIGludCByYXdfbm90aWZpZXJfY2hhaW5fcmVnaXN0ZXIo
c3RydWN0IHJhd19ub3RpZmllcl9oZWFkICpuaCwKPiArZXh0ZXJuIGludCBfX211c3RfY2hlY2sg
cmF3X25vdGlmaWVyX2NoYWluX3JlZ2lzdGVyKHN0cnVjdCByYXdfbm90aWZpZXJfaGVhZCAqbmgs
Cj4gICAgICAgICAgICAgICAgIHN0cnVjdCBub3RpZmllcl9ibG9jayAqbmIpOwo+IC1leHRlcm4g
aW50IHNyY3Vfbm90aWZpZXJfY2hhaW5fcmVnaXN0ZXIoc3RydWN0IHNyY3Vfbm90aWZpZXJfaGVh
ZCAqbmgsCj4gK2V4dGVybiBpbnQgX19tdXN0X2NoZWNrIHNyY3Vfbm90aWZpZXJfY2hhaW5fcmVn
aXN0ZXIoc3RydWN0IHNyY3Vfbm90aWZpZXJfaGVhZCAqbmgsCj4gICAgICAgICAgICAgICAgIHN0
cnVjdCBub3RpZmllcl9ibG9jayAqbmIpOwoKSSB0aGluayB0aGUgYWRkaXRpb24gb2YgX19tdXN0
X2NoZWNrIGlzIG92ZXJraWxsLCBsZWFkaW5nIHRvIHRoZQphZGRpdGlvbiBvZiB1c2VsZXNzIGVy
cm9yIGNoZWNrcyBhbmQgbWVzc2FnZSBwcmludGluZy4gIE1hbnkgY2FsbGVycwpjYWxsIHRoaXMg
d2hlcmUgaXQgY2Fubm90IGZhaWwsIGFuZCB3aGVyZSBub3RoaW5nIGNhbiBiZSBkb25lIGluIHRo
ZQp2ZXJ5IHVubGlrZWx5IGV2ZW50IHRoYXQgdGhlIGNhbGwgd291bGQgZXZlciBzdGFydCB0byBm
YWlsLgoKR3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAgICAgICAgICAgICAgICBHZWVydAoK
LS0KR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51eCBiZXlvbmQgaWEz
MiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29uYWwgY29udmVyc2F0aW9ucyB3aXRo
IHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1dAp3aGVuIEknbSB0
YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInByb2dyYW1tZXIiIG9yIHNvbWV0aGlu
ZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLS0gTGludXMgVG9y
dmFsZHMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpP
cGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGlu
Zm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
