Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7886428674F
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC5-0008EZ-PR; Wed, 07 Oct 2020 18:29:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <skhan@linuxfoundation.org>) id 1kOODZ-0007q0-NP
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Oct 2020 16:47:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Li4M3GK5y6x0SzTfqjxLLA9AT+ROiUGVRcFqRzm5Djg=; b=ZI1hhBq9JDatNFLP+JdO1IpkKk
 7B0nQZdcGlUKz5s69D2SNo9rppEYOIlT/vGcHqnP9bzOY/jv7R4afCCMp3X702ArFPlGWXMTjLHNn
 4Aq0805rcIn+7MsNvOnxFpNkBtMmAchc6yd+hJgbEAjxXivfsG0gVLuTyI1RoAVzrbyQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Li4M3GK5y6x0SzTfqjxLLA9AT+ROiUGVRcFqRzm5Djg=; b=K+9fI32UR/nGzKXm4PbyaFVXg9
 ixtQ6rWbuRiyBJ2ockPBD0hmXHcGUrA6+XULlLJaEQpGwRydBY8GWBetoywMmdj+t/TiIJWwrleb1
 +l47gim/aHG5IEj3oT8R7yUFmKZsIxVSxfv1So/OIZqLwc668sjkVHQpwDensx0kcGCo=;
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kOODQ-0002ND-Sl
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Oct 2020 16:47:35 +0000
Received: by mail-io1-f67.google.com with SMTP id g7so2203271iov.13
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 02 Oct 2020 09:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Li4M3GK5y6x0SzTfqjxLLA9AT+ROiUGVRcFqRzm5Djg=;
 b=a1gXL5toNpXLmacnL7yhtJtYu+HmO+zq2HSfVRcyZ9z5aGYPOUMcOsxSjRxLjTiwhj
 zJBgESeE1qI3ToOAsK8MZWwKmHt51a3nMoD6FLDGupRKEjHEktpPC4yX8sNz7w/nKYtr
 hL0t3LhSNNDXOlNOrlInWA796iaMFGVw4FjQQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Li4M3GK5y6x0SzTfqjxLLA9AT+ROiUGVRcFqRzm5Djg=;
 b=q1SSAay8cr/3wbq+TZ4t+8Oo0msWlaWqolvUNmrfKWCrNgJkr+995FvNleeoxzf9Bo
 JNSb0Ci3xgf8pnUslQm0wM+hnF7WxTXIww7TsW/IAwAiL6OHi4QV8ILjLvAlRVaabXVg
 fscTJyC00T/dTiSCsml30UCCMOeyvRQ0ZMl+vPXPva/N4zbTYlNbKrDTugoSaqSg+3Pn
 mhLOf4FOsFdclEbpMWJs7f5BHzzyF0++xWWET/C4MTuZR7NnXdFq3+39SCFYstMa5Lvu
 A5Iv8v2NKbaNl3ECNS7UwmkxwFTaQxCfoXIlIJ3P0YNSJqFsAhHK7pTgwQYD7AlSm6R6
 K3Kw==
X-Gm-Message-State: AOAM5303B1Ls2IKXEeIwR/k3jKLtZdjqz4ocA9fE8kL85KzI81P3TMJj
 Rb1fZDZ5TAgpWP0I5cOSkH2qSQ==
X-Google-Smtp-Source: ABdhPJzrfRpNIYzV2uFrhJdCHt/QTSYBKDnpK2pS6zKI5Da6BP91uaqOQt3S2LEYZ+yKmaDKjo66AQ==
X-Received: by 2002:a05:6638:10e9:: with SMTP id
 g9mr2960820jae.139.1601657236070; 
 Fri, 02 Oct 2020 09:47:16 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id h2sm932771ioj.5.2020.10.02.09.47.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 02 Oct 2020 09:47:15 -0700 (PDT)
To: Joe Perches <joe@perches.com>, Julia Lawall <julia.lawall@inria.fr>,
 Dan Carpenter <dan.carpenter@oracle.com>, Shuah Khan <shuah@kernel.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>
References: <1601233948-11629-1-git-send-email-Julia.Lawall@inria.fr>
 <CAMj1kXGh+CzuXkAnqsoMO2A3T1p=D6uFOV347Ym5+VFn5U1gWg@mail.gmail.com>
 <20200929124108.GY4282@kadam>
 <alpine.DEB.2.22.394.2009291445050.2808@hadrien>
 <5f0d2b20f5088281363bb4a35c5652a2c087f159.camel@perches.com>
 <cd75e2d1-9923-b725-78cd-fd5611431584@linuxfoundation.org>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <81b94c3a-43d6-c9f5-0bc0-43bf65b3d5fc@linuxfoundation.org>
Date: Fri, 2 Oct 2020 10:47:13 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <cd75e2d1-9923-b725-78cd-fd5611431584@linuxfoundation.org>
Content-Language: en-US
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.3 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kOODQ-0002ND-Sl
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:24 +0000
Subject: Re: [Openipmi-developer] [PATCH 00/18] use semicolons rather than
 commas to separate statements
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
Cc: linux-ide@vger.kernel.org, linux-clk@vger.kernel.org,
 =?UTF-8?Q?Valdis_Kl=c4=93tnieks?= <valdis.kletnieks@vt.edu>,
 David Lechner <david@lechnology.com>, Neil Armstrong <narmstrong@baylibre.com>,
 linux-iio@vger.kernel.org, kernel-janitors@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, linux-wireless@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-block@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 drbd-dev@tron.linbit.com, linux-amlogic@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gOS8yOS8yMCA3OjQyIEFNLCBTaHVhaCBLaGFuIHdyb3RlOgo+IE9uIDkvMjkvMjAgNzozNCBB
TSwgSm9lIFBlcmNoZXMgd3JvdGU6Cj4+IE9uIFR1ZSwgMjAyMC0wOS0yOSBhdCAxNDo0NyArMDIw
MCwgSnVsaWEgTGF3YWxsIHdyb3RlOgo+Pj4gT24gVHVlLCAyOSBTZXAgMjAyMCwgRGFuIENhcnBl
bnRlciB3cm90ZToKPj4+PiBUaGUgdGltZXMgd2hlcmUgY29tbWFzIGFyZSB1c2VkIGRlbGliZXJh
dGVseSB0byByZXBsYWNlIGN1cmx5IGJyYWNlcyAKPj4+PiBhcmUKPj4+PiBqdXN0IGV2aWwuwqAg
RWl0aGVyIHdheSB0aGUgY29kZSBpcyBjbGVhbmVyIHdpdGggc2VtaS1jb2xvbnMuCj4+Pgo+Pj4g
SSBhbHNvIGZvdW5kIGV4YWFtcGxlcyBsaWtlIHRoZSBmb2xsb3dpbmcgdG8gYmUgcGFydGljdWxh
cmx5IHVuZm9ydW5hdGU6Cj4+Pgo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmcHJpbnRmKHN0ZGVyciwKPj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgICJwYWdlX25yICVsdSB3cm9uZyBjb3VudCAlTHUgCj4+PiAlTHVc
biIsCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcGFnZV9uciwgY291bnQsCj4+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgY291bnRfdmVyaWZ5W3BhZ2VfbnJdKSwgZXhpdCgxKTsKPj4+Cj4+PiBU
aGUgZXhpdCBpcyB2ZXJ5IGhhcmQgdG8gc2VlLCB1bmxlc3MgeW91IGtub3cgdG8gbG9vayBmb3Ig
aXQuCj4+Cj4+IEkgc2VudCB0aGF0IHBhdGNoIGxhc3QgbW9udGguCj4+IGh0dHBzOi8vcGF0Y2h3
b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTE3MzQ4NzcvCj4+Cj4gCj4gSSBzZWUgd2hhdCBoYXBwZW5l
ZC4gVGhpcyBwYXRjaCB0b3VjaGVzIGxpYiwgY3B1cG93ZXIsIGFuZCBzZWxmdGVzdHMuCj4gR3Vl
c3MgbG9zdCBpbiB0aGUgbGltYm8gb2Ygd2hvIHRha2VzIGl0Lgo+IAo+ICDCoHRvb2xzL2xpYi9z
dWJjbWQvaGVscC5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDEw
ICstCj4gIMKgdG9vbHMvcG93ZXIvY3B1cG93ZXIvdXRpbHMvY3B1ZnJlcS1zZXQuY8KgwqAgfMKg
IDE0ICstCj4gIMKgdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvdm0vZ3VwX2JlbmNobWFyay5jIHzC
oCAxOCArLQo+ICDCoHRvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL3ZtL3VzZXJmYXVsdGZkLmPCoMKg
IHwgMjk2ICsrKysrKysrKysrKystLS0tLS0tLQo+ICDCoDQgZmlsZXMgY2hhbmdlZCwgMjEwIGlu
c2VydGlvbnMoKyksIDEyOCBkZWxldGlvbnMoLSkKPiAKPiBJIGNhbiB0YWtlIGl0IHRocm91Z2gg
b25lIG9mIG15IHRyZWVzLgo+IAoKUmFmYWVsLCBBbmRyZXcsCgpUaGlzIHBhdGNoIGlzIG5vdyBh
cHBsaWVkIHRvCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0
L3NodWFoL2xpbnV4LWtzZWxmdGVzdC5naXQgCmZpeGVzIGJyYW5jaC4KClRoaXMgc3BhbnMgcG0s
IGtzZWxmdGVzdC1tbSB0ZXN0cyBhbmQgdG9vbHMvbGliIGFuZCBoYXMgYmVlbgppbiBsaW1ibyBm
b3IgYSBmZXcgd2Vla3MgZm9yIHRoYXQgcmVhc29uLgoKSSBkZWNpZGVkIHRvIHRha2UgdGhpcyB0
aHJvdWdoIGtzZWxmdGVzdCB0cmVlIHRvIGF2b2lkIGhhdmluZwpKb2Ugc3BsaXQgdGhlIHBhdGNo
ZXMuCgp0aGFua3MsCi0tIFNodWFoCgoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3Blbmlw
bWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
