Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 980103E477C
	for <lists+openipmi-developer@lfdr.de>; Mon,  9 Aug 2021 16:24:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mD6Cr-0008Vu-TC; Mon, 09 Aug 2021 14:24:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sudipm.mukherjee@gmail.com>) id 1mCL0S-0004bH-7g
 for openipmi-developer@lists.sourceforge.net; Sat, 07 Aug 2021 12:00:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WyWRBH02aF7TMZK2H9iKEqjuVSj2aT5mi1GkBNRCyKg=; b=FrKQ9RzjlnSONuyJ9x8Vhrll14
 kcp0VMXPH2RrDHfwB+Pg/bcLV2JwzyRoI9k4t2PKbmrI/XIbR+IFQWOcJLn0ljyY3j1XZks+SzdDL
 d9RTqg3IV1IhJisbqxeZwNsCDOxAcPgh6mLPHmy/Cij8aK6rlh6kALnJvb20R95Auawk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WyWRBH02aF7TMZK2H9iKEqjuVSj2aT5mi1GkBNRCyKg=; b=F65zhZMP3QjMsyr98E4G+4ocQ/
 otnOs8bZNSY5AsF8H+k0t+frn7I1Oy3BAem+uF1Z9Bjjq26vZ7xYscjTSoPVTh2+9Xkg0UWqMLRJ7
 0QVi4UDwF3LJlK/pgKg/bgEfDioY8ZXv7AK5ZUGvl3eThZV7FZosgJwf9zw1RUy2QaZA=;
Received: from mail-yb1-f173.google.com ([209.85.219.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mCL0L-0002yn-U0
 for openipmi-developer@lists.sourceforge.net; Sat, 07 Aug 2021 12:00:48 +0000
Received: by mail-yb1-f173.google.com with SMTP id m193so20228281ybf.9
 for <openipmi-developer@lists.sourceforge.net>;
 Sat, 07 Aug 2021 05:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=WyWRBH02aF7TMZK2H9iKEqjuVSj2aT5mi1GkBNRCyKg=;
 b=QOdR5x9JTDfThKVhuyhEYPReV0+hyqKytp6bhrDU9jtJxybQG/OIAaA3oWXzAmhUeI
 OpdNdHL2cTWOdcoGJdjl6SMiapPShk5dqCtzePXNHkSDDTyDYEUVEMRWoeWDVMRgEvWT
 F3WsjtH95W2GEqcxmYbu5Nki6iHjaP/wAYl8B41Jx1LBzEzxM7r/El9yGNDidzRbvvqa
 Kmis+CIiKYZTjEfn/MyNVZZE/sJlnMzcMNu5e2sZtEh+M3pQUSfAAN/s+5gpulRT28gX
 WpDFxD9aYBck7JqESW1IHpFohPSZLTlNkFRqH4KUtyrj9Pxrh4lb4vBKQjKvBi3tS5E+
 KYxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=WyWRBH02aF7TMZK2H9iKEqjuVSj2aT5mi1GkBNRCyKg=;
 b=jl/eD02tM8fMPkoqEcOM99t7VlitRDedIQdxNz8HlwLaBtPNUJiHyxQnm0mXhO6fjQ
 7vyuQMU4Ai2XS2311jiSrkhlcTkY3iBTNKdW9X/I+alJe0Xp3pdJgIfcPWs0iqUGzOWX
 rwe1LpFCpMjGNor3P1c4ERggRp/oTVrLRG+L4lGw3oOnvUQWwJfAQrcrOV0zyu1xHNjS
 rg+NckFjMSu+/e/DKCOKvc/7iDms7FdcZGvfPBoob/25I9VwAPKGVhmrVE8/MBViQcKK
 bsjUDNu0ReIT8d7SLc1FC/Wr+3u2Ott8olrQfyvUNPKNG0ru03qyCTtzu4jWu8FVfiHu
 Ppsw==
X-Gm-Message-State: AOAM531OhZH994cbv12bgeSnWr9BhM496mX53gX9qRMRbwRI3z66BKhO
 CQe639kQWre4iy+sFnX2xj5HJauos4alCwY802prXxmD9m6p2A==
X-Google-Smtp-Source: ABdhPJxo9qHswzoJFxioC74Rd4uuv/McBZ+hRPGpGsGEvfuOE6rZWY4LuFWwzY6Vg59fOtg8kqf5oNFF1j4ZtwtEzDU=
X-Received: by 2002:a25:1546:: with SMTP id 67mr19373700ybv.331.1628337626600; 
 Sat, 07 Aug 2021 05:00:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210807091927.1974404-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20210807091927.1974404-1-u.kleine-koenig@pengutronix.de>
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Date: Sat, 7 Aug 2021 12:59:50 +0100
Message-ID: <CADVatmO7Wtc8+4mzorrmcwKv2QXg579avynK==9D1Dqz9PHaJw@mail.gmail.com>
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (sudipm.mukherjee[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: pengutronix.de]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.173 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mCL0L-0002yn-U0
X-Mailman-Approved-At: Mon, 09 Aug 2021 14:24:45 +0000
Subject: Re: [Openipmi-developer] [PATCH v2] parisc: Make struct
 parisc_driver::remove() return void
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
Cc: linux-input@vger.kernel.org, alsa-devel@alsa-project.org,
 Corey Minyard <minyard@acm.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 linux-serial@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helge Deller <deller@gmx.de>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Takashi Iwai <tiwai@suse.com>, Jaroslav Kysela <perex@perex.cz>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 netdev <netdev@vger.kernel.org>, linux-parisc <linux-parisc@vger.kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>, linux-scsi@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, openipmi-developer@lists.sourceforge.net,
 Jiri Slaby <jirislaby@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gU2F0LCBBdWcgNywgMjAyMSBhdCAxMDoxOSBBTSBVd2UgS2xlaW5lLUvDtm5pZwo8dS5rbGVp
bmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPgo+IFRoZSBjYWxsZXIgb2YgdGhpcyBm
dW5jdGlvbiAocGFyaXNjX2RyaXZlcl9yZW1vdmUoKSBpbgo+IGFyY2gvcGFyaXNjL2tlcm5lbC9k
cml2ZXJzLmMpIGlnbm9yZXMgdGhlIHJldHVybiB2YWx1ZSwgc28gYmV0dGVyIGRvbid0Cj4gcmV0
dXJuIGFueSB2YWx1ZSBhdCBhbGwgdG8gbm90IHdha2Ugd3JvbmcgZXhwZWN0YXRpb25zIGluIGRy
aXZlciBhdXRob3JzLgo+Cj4gVGhlIG9ubHkgZnVuY3Rpb24gdGhhdCBjb3VsZCByZXR1cm4gYSBu
b24temVybyB2YWx1ZSBiZWZvcmUgd2FzCj4gaXBtaV9wYXJpc2NfcmVtb3ZlKCkgd2hpY2ggcmV0
dXJucyB0aGUgcmV0dXJuIHZhbHVlIG9mCj4gaXBtaV9zaV9yZW1vdmVfYnlfZGV2KCkuIE1ha2Ug
dGhpcyBmdW5jdGlvbiByZXR1cm4gdm9pZCwgdG9vLCBhcyBmb3IgYWxsCj4gb3RoZXIgY2FsbGVy
cyB0aGUgdmFsdWUgaXMgaWdub3JlZCwgdG9vLgo+Cj4gQWxzbyBmb2xkIGluIGEgc21hbGwgY2hl
Y2twYXRjaCBmaXggZm9yOgo+Cj4gV0FSTklORzogVW5uZWNlc3Nhcnkgc3BhY2UgYmVmb3JlIGZ1
bmN0aW9uIHBvaW50ZXIgYXJndW1lbnRzCj4gKyAgICAgICB2b2lkICgqcmVtb3ZlKSAoc3RydWN0
IHBhcmlzY19kZXZpY2UgKmRldik7Cj4KPiBBY2tlZC1ieTogRG1pdHJ5IFRvcm9raG92IDxkbWl0
cnkudG9yb2tob3ZAZ21haWwuY29tPiAoZm9yIGRyaXZlcnMvaW5wdXQpCj4gU2lnbmVkLW9mZi1i
eTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KPiAt
LS0KPiBjaGFuZ2VzIHNpbmNlIHYxIHNlbnQgd2l0aCBNZXNzYWdlLUlkOgo+IDIwMjEwODA2MDkz
OTM4LjE5NTA5OTAtMS11LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU6Cj4KPiAgLSBGaXgg
YSBjb21waWxlciBlcnJvciBub3RpY2VkIGJ5IHRoZSBrZXJuZWwgdGVzdCByb2JvdAo+ICAtIEFk
ZCBBY2sgZm9yIERtaXRyeQo+Cj4gIGFyY2gvcGFyaXNjL2luY2x1ZGUvYXNtL3BhcmlzYy1kZXZp
Y2UuaCAgfCA0ICsrLS0KPiAgZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zaS5oICAgICAgICAgICAg
ICB8IDIgKy0KPiAgZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zaV9pbnRmLmMgICAgICAgICB8IDYg
Ky0tLS0tCj4gIGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfcGFyaXNjLmMgICAgICAgfCA0ICsr
LS0KPiAgZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zaV9wbGF0Zm9ybS5jICAgICB8IDQgKysrLQo+
ICBkcml2ZXJzL2lucHV0L2tleWJvYXJkL2hpbGtiZC5jICAgICAgICAgIHwgNCArLS0tCj4gIGRy
aXZlcnMvaW5wdXQvc2VyaW8vZ3NjcHMyLmMgICAgICAgICAgICAgfCAzICstLQo+ICBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pODI1eHgvbGFzaV84MjU5Ni5jIHwgMyArLS0KPiAgZHJpdmVycy9wYXJw
b3J0L3BhcnBvcnRfZ3NjLmMgICAgICAgICAgICB8IDMgKy0tCgpBY2tlZC1ieTogIFN1ZGlwIE11
a2hlcmplZSA8c3VkaXBtLm11a2hlcmplZUBnbWFpbC5jb20+CgoKLS0gClJlZ2FyZHMKU3VkaXAK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBt
aS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vm
b3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3Bl
bmlwbWktZGV2ZWxvcGVyCg==
