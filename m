Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F2E3E477B
	for <lists+openipmi-developer@lfdr.de>; Mon,  9 Aug 2021 16:24:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mD6Cr-0008W5-Vv; Mon, 09 Aug 2021 14:24:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jirislaby@gmail.com>) id 1mCwlP-0004wd-6C
 for openipmi-developer@lists.sourceforge.net; Mon, 09 Aug 2021 04:19:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5hPnLfQOdhJ9VmhjHCFa74vmYcG7vey0A+Y6VMqc53E=; b=SdOSxlxeMNI/F6XvPZKGW47ARe
 nnd9efm11ZFmMPpnXZR9iHOkiXZZMTS+0DYHmW7iX7bGctFsz9lV+0nELopVgyjKRkzownqiByHfD
 Dfo2jrrl+Up3x3fiTVMXIfEU1fxzWv+DVNFb+nAEXigBczfxdqy5yTyl4Z1pbl5zJvyo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5hPnLfQOdhJ9VmhjHCFa74vmYcG7vey0A+Y6VMqc53E=; b=Z99TOR3he5rTyw7Q43k+9WE5hu
 BZMg6/nCH71kMI1XOrPUmF2v8N9pSLnOg0wvDmnmhFvr+OToAeXC2jlGk7KgL94GX17sX4KEHekdm
 LbkV1BZYllrT4I/TjQ8uzAgkPX7blzggZBApZ1NDE+NyjwRE4lD3/Tg4T+f2scgoY7pI=;
Received: from mail-ed1-f47.google.com ([209.85.208.47])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mCwlL-0001u1-8n
 for openipmi-developer@lists.sourceforge.net; Mon, 09 Aug 2021 04:19:47 +0000
Received: by mail-ed1-f47.google.com with SMTP id bo19so3280334edb.9
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 08 Aug 2021 21:19:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5hPnLfQOdhJ9VmhjHCFa74vmYcG7vey0A+Y6VMqc53E=;
 b=dyJ0A8EnUhAYXlr8heUwd0Pn6hGW97OObmjT0oCO7cp08GiInjGEaS4GJjtLnL5CJ5
 TzaomTWC+m8Vx4x8tkRmIFm0PUlMuhNwOJrMS8ntFpSD7BkTAQa87uFloojh16nRXMkv
 De3FrFz/4ZAcy8qweAeAV8+Qe9sgDezMT2d9+aetza+T5+EFKQonVg9ae3ev0r7BHl2W
 DlBvwBZyccxnc/1YOwLdj1h3oZdw1NgVINfpLjKNO2Tg3TmOnzoFUddfxXt2ylo9Lknr
 YnE/NeZZI0Xk8+Zlcp87ph36RjI0wVlSTWnCYEOCmz40VnMDFXTMf8MKluJjZDhLnO4U
 yfBQ==
X-Gm-Message-State: AOAM531SaVGXv7n4qN4cmIdQ2vaNyI1cUjZFxhBsL+miY1dbPW+aeKvd
 rWW/b4RPOKmW8h8hmYwIn9w=
X-Google-Smtp-Source: ABdhPJxLBa4EXTSLKfWMi4nEZ8Wk8PrT9QK9XE4M+ir2fnBq9dIuQxK16aytPtIw8dDJgnbvoCv0Eg==
X-Received: by 2002:a05:6402:5251:: with SMTP id
 t17mr22730430edd.157.1628482776972; 
 Sun, 08 Aug 2021 21:19:36 -0700 (PDT)
Received: from ?IPv6:2a0b:e7c0:0:107::70f? ([2a0b:e7c0:0:107::70f])
 by smtp.gmail.com with ESMTPSA id z70sm3240588ede.76.2021.08.08.21.19.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 08 Aug 2021 21:19:36 -0700 (PDT)
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>
References: <20210807091927.1974404-1-u.kleine-koenig@pengutronix.de>
From: Jiri Slaby <jirislaby@kernel.org>
Message-ID: <bef58281-91b3-b2d6-ace8-afe0d08221e1@kernel.org>
Date: Mon, 9 Aug 2021 06:19:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210807091927.1974404-1-u.kleine-koenig@pengutronix.de>
Content-Language: en-US
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jirislaby[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.47 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.47 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mCwlL-0001u1-8n
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
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Corey Minyard <minyard@acm.org>, linux-serial@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S. Miller" <davem@davemloft.net>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, netdev@vger.kernel.org,
 linux-parisc@vger.kernel.org, kernel@pengutronix.de,
 linux-scsi@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 openipmi-developer@lists.sourceforge.net,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gMDcuIDA4LiAyMSwgMTE6MTksIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+IFRoZSBjYWxs
ZXIgb2YgdGhpcyBmdW5jdGlvbiAocGFyaXNjX2RyaXZlcl9yZW1vdmUoKSBpbgo+IGFyY2gvcGFy
aXNjL2tlcm5lbC9kcml2ZXJzLmMpIGlnbm9yZXMgdGhlIHJldHVybiB2YWx1ZSwgc28gYmV0dGVy
IGRvbid0Cj4gcmV0dXJuIGFueSB2YWx1ZSBhdCBhbGwgdG8gbm90IHdha2Ugd3JvbmcgZXhwZWN0
YXRpb25zIGluIGRyaXZlciBhdXRob3JzLgo+IAo+IFRoZSBvbmx5IGZ1bmN0aW9uIHRoYXQgY291
bGQgcmV0dXJuIGEgbm9uLXplcm8gdmFsdWUgYmVmb3JlIHdhcwo+IGlwbWlfcGFyaXNjX3JlbW92
ZSgpIHdoaWNoIHJldHVybnMgdGhlIHJldHVybiB2YWx1ZSBvZgo+IGlwbWlfc2lfcmVtb3ZlX2J5
X2RldigpLiBNYWtlIHRoaXMgZnVuY3Rpb24gcmV0dXJuIHZvaWQsIHRvbywgYXMgZm9yIGFsbAo+
IG90aGVyIGNhbGxlcnMgdGhlIHZhbHVlIGlzIGlnbm9yZWQsIHRvby4KPiAKPiBBbHNvIGZvbGQg
aW4gYSBzbWFsbCBjaGVja3BhdGNoIGZpeCBmb3I6Cj4gCj4gV0FSTklORzogVW5uZWNlc3Nhcnkg
c3BhY2UgYmVmb3JlIGZ1bmN0aW9uIHBvaW50ZXIgYXJndW1lbnRzCj4gKwl2b2lkICgqcmVtb3Zl
KSAoc3RydWN0IHBhcmlzY19kZXZpY2UgKmRldik7Cj4gCj4gQWNrZWQtYnk6IERtaXRyeSBUb3Jv
a2hvdiA8ZG1pdHJ5LnRvcm9raG92QGdtYWlsLmNvbT4gKGZvciBkcml2ZXJzL2lucHV0KQo+IFNp
Z25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9u
aXguZGU+Cj4gLS0tCj4gY2hhbmdlcyBzaW5jZSB2MSBzZW50IHdpdGggTWVzc2FnZS1JZDoKPiAy
MDIxMDgwNjA5MzkzOC4xOTUwOTkwLTEtdS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlOgo+
IAo+ICAgLSBGaXggYSBjb21waWxlciBlcnJvciBub3RpY2VkIGJ5IHRoZSBrZXJuZWwgdGVzdCBy
b2JvdAo+ICAgLSBBZGQgQWNrIGZvciBEbWl0cnkKPiAKPiAgIGFyY2gvcGFyaXNjL2luY2x1ZGUv
YXNtL3BhcmlzYy1kZXZpY2UuaCAgfCA0ICsrLS0KPiAgIGRyaXZlcnMvY2hhci9pcG1pL2lwbWlf
c2kuaCAgICAgICAgICAgICAgfCAyICstCj4gICBkcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NpX2lu
dGYuYyAgICAgICAgIHwgNiArLS0tLS0KPiAgIGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfcGFy
aXNjLmMgICAgICAgfCA0ICsrLS0KPiAgIGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfcGxhdGZv
cm0uYyAgICAgfCA0ICsrKy0KPiAgIGRyaXZlcnMvaW5wdXQva2V5Ym9hcmQvaGlsa2JkLmMgICAg
ICAgICAgfCA0ICstLS0KPiAgIGRyaXZlcnMvaW5wdXQvc2VyaW8vZ3NjcHMyLmMgICAgICAgICAg
ICAgfCAzICstLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaTgyNXh4L2xhc2lfODI1OTYuYyB8
IDMgKy0tCj4gICBkcml2ZXJzL3BhcnBvcnQvcGFycG9ydF9nc2MuYyAgICAgICAgICAgIHwgMyAr
LS0KPiAgIGRyaXZlcnMvc2NzaS9sYXNpNzAwLmMgICAgICAgICAgICAgICAgICAgfCA0ICstLS0K
PiAgIGRyaXZlcnMvc2NzaS96YWxvbi5jICAgICAgICAgICAgICAgICAgICAgfCA0ICstLS0KPiAg
IGRyaXZlcnMvdHR5L3NlcmlhbC9tdXguYyAgICAgICAgICAgICAgICAgfCAzICstLQoKRm9yIHRo
ZSBUVFkgcGllY2U6CkFja2VkLWJ5OiBKaXJpIFNsYWJ5IDxqaXJpc2xhYnlAa2VybmVsLm9yZz4K
CnRoYW5rcywKLS0gCi0tIApqcwpzdXNlIGxhYnMKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9w
ZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
