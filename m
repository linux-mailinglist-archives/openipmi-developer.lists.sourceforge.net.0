Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AC43D564908
	for <lists+openipmi-developer@lfdr.de>; Sun,  3 Jul 2022 20:21:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1o84DN-00075u-Vx; Sun, 03 Jul 2022 18:21:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <luca@lucaceresoli.net>)
 id 1o6ffM-0004sD-9s; Wed, 29 Jun 2022 21:56:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Cc:To:Subject:From:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oz6GKw8BpKrDIGgvnV9242qGIiYTvSr9/fjEazC9jI8=; b=jJGyWtmiwKTBr3hCIaQVnSzb/p
 68UJPTpI4Phd5HygJ4SWu07CIYd+7vQVyPfso5X04QJtVKVPrdJ9H4tkpbXleCzV4jCiKukwBzOch
 P18pY57sDMOWCpi1Mg3T/su5mxRf9l5vu1DaljTzpeuxIKSMPXR2gFgnJg9mCOZd4W2s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Cc:To:
 Subject:From:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oz6GKw8BpKrDIGgvnV9242qGIiYTvSr9/fjEazC9jI8=; b=ZHubQmKceixjpI8JBWqgNUcFjp
 VI/UQqU0lafP4Fa4C0E7juBdjWqW2ejccAHcFdFp2JiAFrftMceKfqeA4WKDIPkvxXJ23JVjgCuXo
 z+qFIUw9djdB8BoZdhKITa5geIZeRw/mrjBbeF+Sl4QiqVN+7WanohtEF59GNSh/Zgto=;
Received: from hostingweb31-40.netsons.net ([89.40.174.40])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o6ffH-0001X3-MZ; Wed, 29 Jun 2022 21:56:08 +0000
Received: from [37.161.29.0] (port=43545 helo=[192.168.131.30])
 by hostingweb31.netsons.net with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.95)
 (envelope-from <luca@lucaceresoli.net>) id 1o6f6m-000BzC-Qd;
 Wed, 29 Jun 2022 23:20:25 +0200
Message-ID: <d682fb60-c254-f89e-5d6d-cdf7aa752939@lucaceresoli.net>
Date: Wed, 29 Jun 2022 23:20:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
From: Luca Ceresoli <luca@lucaceresoli.net>
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Wolfram Sang <wsa@kernel.org>
References: <20220628140313.74984-1-u.kleine-koenig@pengutronix.de>
 <20220628140313.74984-7-u.kleine-koenig@pengutronix.de>
Content-Language: en-US
In-Reply-To: <20220628140313.74984-7-u.kleine-koenig@pengutronix.de>
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - hostingweb31.netsons.net
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lucaceresoli.net
X-Get-Message-Sender-Via: hostingweb31.netsons.net: authenticated_id:
 luca@lucaceresoli.net
X-Authenticated-Sender: hostingweb31.netsons.net: luca@lucaceresoli.net
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, [keeping only individuals and lists in Cc to avoid bounces]
    On 28/06/22 16:03, Uwe Kleine-König wrote: > From: Uwe Kleine-König <uwe@kleine-koenig.org>
    > > The value returned by an i2c driver's remove function is mostly ignored.
    > (Only an error message is p [...] 
 
 Content analysis details:   (-0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [89.40.174.40 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1o6ffH-0001X3-MZ
X-Mailman-Approved-At: Sun, 03 Jul 2022 18:20:54 +0000
Subject: Re: [Openipmi-developer] [PATCH 6/6] i2c: Make remove callback
 return void
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
Cc: alsa-devel@alsa-project.org, linux-pwm@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-fbdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-i2c@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-leds@vger.kernel.org,
 linux-rtc@vger.kernel.org, chrome-platform@lists.linux.dev,
 linux-staging@lists.linux.dev, kasan-dev@googlegroups.com,
 linux-clk@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-input@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-pm@vger.kernel.org, acpi4asus-user@lists.sourceforge.net,
 linux-gpio@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org, openipmi-developer@lists.sourceforge.net,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-hwmon@vger.kernel.org, patches@opensource.cirrus.com,
 linux-usb@vger.kernel.org, linux-crypto@vger.kernel.org,
 netdev@vger.kernel.org, linux-integrity@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGksCgpba2VlcGluZyBvbmx5IGluZGl2aWR1YWxzIGFuZCBsaXN0cyBpbiBDYyB0byBhdm9pZCBi
b3VuY2VzXQoKT24gMjgvMDYvMjIgMTY6MDMsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+IEZy
b206IFV3ZSBLbGVpbmUtS8O2bmlnIDx1d2VAa2xlaW5lLWtvZW5pZy5vcmc+Cj4gCj4gVGhlIHZh
bHVlIHJldHVybmVkIGJ5IGFuIGkyYyBkcml2ZXIncyByZW1vdmUgZnVuY3Rpb24gaXMgbW9zdGx5
IGlnbm9yZWQuCj4gKE9ubHkgYW4gZXJyb3IgbWVzc2FnZSBpcyBwcmludGVkIGlmIHRoZSB2YWx1
ZSBpcyBub24temVybyB0aGF0IHRoZQo+IGVycm9yIGlzIGlnbm9yZWQuKQo+IAo+IFNvIGNoYW5n
ZSB0aGUgcHJvdG90eXBlIG9mIHRoZSByZW1vdmUgZnVuY3Rpb24gdG8gcmV0dXJuIG5vIHZhbHVl
LiBUaGlzCj4gd2F5IGRyaXZlciBhdXRob3JzIGFyZSBub3QgdGVtcHRlZCB0byBhc3N1bWUgdGhh
dCBwYXNzaW5nIGFuIGVycm9yIHRvCj4gdGhlIHVwcGVyIGxheWVyIGlzIGEgZ29vZCBpZGVhLiBB
bGwgZHJpdmVycyBhcmUgYWRhcHRlZCBhY2NvcmRpbmdseS4KPiBUaGVyZSBpcyBubyBpbnRlbmRl
ZCBjaGFuZ2Ugb2YgYmVoYXZpb3VyLCBhbGwgY2FsbGJhY2tzIHdlcmUgcHJlcGFyZWQgdG8KPiBy
ZXR1cm4gMCBiZWZvcmUuCj4gCj4gU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUu
a2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KCkZvciB2ZXJzYWNsb2NrOgoKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9jbGsvY2xrLXZlcnNhY2xvY2s1LmMgYi9kcml2ZXJzL2Nsay9jbGstdmVy
c2FjbG9jazUuYwo+IGluZGV4IGU3YmUzZTU0YjliZS4uNjU3NDkzZWNjZTRjIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvY2xrL2Nsay12ZXJzYWNsb2NrNS5jCj4gKysrIGIvZHJpdmVycy9jbGsvY2xr
LXZlcnNhY2xvY2s1LmMKPiBAQCAtMTEzOCw3ICsxMTM4LDcgQEAgc3RhdGljIGludCB2YzVfcHJv
YmUoc3RydWN0IGkyY19jbGllbnQgKmNsaWVudCkKPiAgCXJldHVybiByZXQ7Cj4gIH0KPiAgCj4g
LXN0YXRpYyBpbnQgdmM1X3JlbW92ZShzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50KQo+ICtzdGF0
aWMgdm9pZCB2YzVfcmVtb3ZlKHN0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQpCj4gIHsKPiAgCXN0
cnVjdCB2YzVfZHJpdmVyX2RhdGEgKnZjNSA9IGkyY19nZXRfY2xpZW50ZGF0YShjbGllbnQpOwo+
ICAKPiBAQCAtMTE0Niw4ICsxMTQ2LDYgQEAgc3RhdGljIGludCB2YzVfcmVtb3ZlKHN0cnVjdCBp
MmNfY2xpZW50ICpjbGllbnQpCj4gIAo+ICAJaWYgKHZjNS0+Y2hpcF9pbmZvLT5mbGFncyAmIFZD
NV9IQVNfSU5URVJOQUxfWFRBTCkKPiAgCQljbGtfdW5yZWdpc3Rlcl9maXhlZF9yYXRlKHZjNS0+
cGluX3hpbik7Cj4gLQo+IC0JcmV0dXJuIDA7Cj4gIH0KPiAgCj4gIHN0YXRpYyBpbnQgX19tYXli
ZV91bnVzZWQgdmM1X3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQoKUmV2aWV3ZWQtYnk6IEx1
Y2EgQ2VyZXNvbGkgPGx1Y2FAbHVjYWNlcmVzb2xpLm5ldD4KUmV2aWV3ZWQtYnk6IEx1Y2EgQ2Vy
ZXNvbGkgPGx1Y2EuY2VyZXNvbGlAYm9vdGxpbi5jb20+CgotLSAKTHVjYQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBt
YWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRw
czovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9w
ZXIK
