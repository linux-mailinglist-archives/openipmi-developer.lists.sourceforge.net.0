Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 113EEF9960
	for <lists+openipmi-developer@lfdr.de>; Tue, 12 Nov 2019 20:09:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iUbXe-0002sB-Rx; Tue, 12 Nov 2019 19:09:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cminyard@mvista.com>) id 1iUbXa-0002s0-3C
 for openipmi-developer@lists.sourceforge.net; Tue, 12 Nov 2019 19:09:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VEGoFwrILa/Bz2Z5av58zC5E/xCfln7dzu7x1nqlQj0=; b=alXhb3SAjXa9i06aWlYFzZ8X9m
 2muMIZ+SGU24QhRYH31hnOqIDh5Y+MttLeD42qPSI6r6T4owAkR/mvybnv2MbRyh7Z93arpSEStXS
 M/13Vfae0eRLLZaAIxC2ImqCNdfhf4mzCSwUsiFRCCfJOLYQIv7dtzvevOQgoByINiKc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VEGoFwrILa/Bz2Z5av58zC5E/xCfln7dzu7x1nqlQj0=; b=hAdJjqrNp1eOJhKYHVc4CwOtPY
 QBBi4N8chdtagqi+d35Bf2+5RPb7lAcXw/+ojV92qvrxlb6BvtB+jno80V/i7015Dvs/1lBW+dk6z
 imCVJrvPlD+VADyEL0Jfndzb911tsGO9DW9tMqE3a8MljYObHPvI5wQsW/yFAvKJQTIs=;
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iUbXU-00Dr1S-0P
 for openipmi-developer@lists.sourceforge.net; Tue, 12 Nov 2019 19:09:26 +0000
Received: by mail-oi1-f196.google.com with SMTP id v138so15842169oif.6
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 12 Nov 2019 11:09:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mvista-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=VEGoFwrILa/Bz2Z5av58zC5E/xCfln7dzu7x1nqlQj0=;
 b=C+6bLj8x/BxaJhpnFaG2kWpSLjCPH7N3gGA4B2HmQWBnVa743Xf+w7JU9gGt46ZsqJ
 35bfMn4pCSCNbbVVegjCjUMxZ0MbyChHS/20CBYzSikRVulk2tgBAsoxEQ8b0KEtn3Zq
 z1FwS8H0h5ct89UqOqVBu9xGfa9kUrQWKNMK4UYzEOJ6UtRptcWR4UqGL26x8nOqTSzB
 exDIh7/vB0GPAjNKA8b4L1TWNZ6iqoBWQ35LNuPHOJ1mnk8UqAEERofFN8EzkKaMGfeH
 D3oPC6kI6U5yx++Km3/uiTcwqhcVjEGvOmf9j/BeSdExzMG1z0syAY9LvYKhRltmkjgg
 1wRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=VEGoFwrILa/Bz2Z5av58zC5E/xCfln7dzu7x1nqlQj0=;
 b=NHhpm1gyXJRTcOtJKrM10kSSgu7p5Ji9Po/mt0+28ZB11WcPk6y+OUCfOwwDE4WyJz
 MRtKce0gt0TVFMlIT1U3o4GSg3dfY+ydny8dWSv/sixpMeg8TBOsuOTm9Hl7y/E7FjvU
 sx9IS5s4KV9e62i7NoZAJZHvAm7hY8TgaHc8gzKw2xHw4hue2DzcNIpdaOLvnvHiiPyh
 m8CfrrGmhNn9FGczr5j25cIQ8SC3nJ2SQPbgZo09wsuXu2jgsKiHkS6EEAV5hG9OgRuT
 dI/8zJ/hoKjw+gSu+D3tnqAierHXO5ndrOUBLbiSpNKFzLUWL/jdY2lasT9W5xi8aXo8
 fkzg==
X-Gm-Message-State: APjAAAVyfOgZlKVlynBHSt6n5enAz+lKIferHM8FNj/Br5HLVMey5/a+
 vmmFmDUcM8Uy4yVs3Lmogj8ywVJWM88n5g==
X-Google-Smtp-Source: APXvYqwpIv3p55kAYFjXsw3MARmCQNdjHAUw1xtx7WrcYifyecc6dpULS7L6ofxBsbZAfSjeErr5fg==
X-Received: by 2002:aca:57d7:: with SMTP id l206mr395543oib.32.1573584073982; 
 Tue, 12 Nov 2019 10:41:13 -0800 (PST)
Received: from minyard.net ([47.184.136.59])
 by smtp.gmail.com with ESMTPSA id n9sm6636379otn.4.2019.11.12.10.41.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 12 Nov 2019 10:41:13 -0800 (PST)
Date: Tue, 12 Nov 2019 12:41:11 -0600
From: Corey Minyard <cminyard@mvista.com>
To: Vijay Khemka <vijaykhemka@fb.com>
Message-ID: <20191112184111.GA2938@minyard.net>
References: <20191112023610.3644314-1-vijaykhemka@fb.com>
 <20191112123602.GD2882@minyard.net>
 <493C2E64-2E41-47FF-BDA6-6EA1DA758016@fb.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <493C2E64-2E41-47FF-BDA6-6EA1DA758016@fb.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.196 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: acm.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iUbXU-00Dr1S-0P
Subject: Re: [Openipmi-developer] [PATCH 1/2] drivers: ipmi: Support raw i2c
 packet in IPMB
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
Reply-To: cminyard@mvista.com
Cc: Sai Dasari <sdasari@fb.com>, "minyard@acm.org" <minyard@acm.org>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVHVlLCBOb3YgMTIsIDIwMTkgYXQgMDU6NTc6MjVQTSArMDAwMCwgVmlqYXkgS2hlbWthIHdy
b3RlOgo+IAo+IAo+IO+7v09uIDExLzEyLzE5LCA0OjM2IEFNLCAiQ29yZXkgTWlueWFyZCIgPHRj
bWlueWFyZEBnbWFpbC5jb20gb24gYmVoYWxmIG9mIG1pbnlhcmRAYWNtLm9yZz4gd3JvdGU6Cj4g
Cj4gICAgIE9uIE1vbiwgTm92IDExLCAyMDE5IGF0IDA2OjM2OjA5UE0gLTA4MDAsIFZpamF5IEto
ZW1rYSB3cm90ZToKPiAgICAgPiBNYW55IElQTUIgZGV2aWNlcyBkb2Vzbid0IHN1cHBvcnQgc21i
dXMgcHJvdG9jb2wgYW5kIGN1cnJlbnQgZHJpdmVyCj4gICAgID4gc3VwcG9ydCBvbmx5IHNtYnVz
IGRldmljZXMuIFNvIGFkZGVkIHN1cHBvcnQgZm9yIHJhdyBpMmMgcGFja2V0cy4KPiAgICAgCj4g
ICAgIEkgaGF2ZW4ndCByZXZpZXdlZCB0aGlzLCByZWFsbHksIGJlY2F1c2UgSSBoYXZlIGEgbW9y
ZSBnZW5lcmFsCj4gICAgIGNvbmNlcm4uLi4KPiAgICAgCj4gICAgIElzIGl0IHBvc3NpYmxlIHRv
IG5vdCBkbyB0aGlzIHdpdGggYSBjb25maWcgaXRlbT8gIENhbiB5b3UgYWRkIHNvbWV0aGluZwo+
ICAgICB0byB0aGUgZGV2aWNlIHRyZWUgYW5kL29yIHZpYSBhbiBpb2N0bCB0byBtYWtlIHRoaXMg
ZHluYW1pY2FsbHkKPiAgICAgY29uZmlndXJhYmxlPyAgVGhhdCdzIG1vcmUgZmxleGlibGUgKGl0
IGNhbiBzdXBwb3J0IG1peGVkIGRldmljZXMpIGFuZAo+ICAgICBpcyBmcmllbmRsaWVyIHRvIHVz
ZXJzIChkb24ndCBoYXZlIHRvIGdldCB0aGUgY29uZmlnIHJpZ2h0KS4KPiBJIGFncmVlIHdpdGgg
eW91LCBJIHdhcyBhbHNvIG5vdCBjb21mb3J0YWJsZSB1c2luZyBjb25maWcgYW5kIGNvdWxkbid0
IGZpbmQgb3RoZXIgCj4gT3B0aW9ucywgSSB3aWxsIGxvb2sgaW50byBtb3JlIG9wdGlvbiBub3cg
YW5kIHVwZGF0ZSBwYXRjaC4KCklNSE8sIGRldmljZSB0cmVlIGlzIHRoZSByaWdodCB3YXkgdG8g
ZG8gdGhpcy4gIFlvdSBzaG91bGQgYWxzbyBoYXZlIGEKc3lzZnMgc2V0dGluZyBmb3IgdGhpcywg
SSB0aGluay4KCi1jb3JleQoKPiAgICAgCj4gICAgIENvbmZpZyBpdGVtcyBmb3IgYWRkaW5nIG5l
dyBmdW5jdGlvbmFsaXR5IGFyZSBnZW5lcmFsbHkgb2suICBDb25maWcKPiAgICAgaXRlbXMgZm9y
IGNob29zaW5nIGJldHdlZW4gdHdvIG11dHVhbGx5IGV4Y2x1c2l2ZSBjaG9pY2VzIGFyZQo+ICAg
ICBnZW5lcmFsbHkgbm90Lgo+ICAgICAKPiAgICAgLWNvcmV5Cj4gICAgIAo+ICAgICA+IAo+ICAg
ICA+IFNpZ25lZC1vZmYtYnk6IFZpamF5IEtoZW1rYSA8dmlqYXlraGVta2FAZmIuY29tPgo+ICAg
ICA+IC0tLQo+ICAgICA+ICBkcml2ZXJzL2NoYXIvaXBtaS9LY29uZmlnICAgICAgICB8ICA2ICsr
KysrKwo+ICAgICA+ICBkcml2ZXJzL2NoYXIvaXBtaS9pcG1iX2Rldl9pbnQuYyB8IDMwICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAgICA+ICAyIGZpbGVzIGNoYW5nZWQsIDM2IGlu
c2VydGlvbnMoKykKPiAgICAgPiAKPiAgICAgPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jaGFyL2lw
bWkvS2NvbmZpZyBiL2RyaXZlcnMvY2hhci9pcG1pL0tjb25maWcKPiAgICAgPiBpbmRleCBhOWNm
ZTRjMDVlNjQuLmU1MjY4NDQzYjQ3OCAxMDA2NDQKPiAgICAgPiAtLS0gYS9kcml2ZXJzL2NoYXIv
aXBtaS9LY29uZmlnCj4gICAgID4gKysrIGIvZHJpdmVycy9jaGFyL2lwbWkvS2NvbmZpZwo+ICAg
ICA+IEBAIC0xMzksMyArMTM5LDkgQEAgY29uZmlnIElQTUJfREVWSUNFX0lOVEVSRkFDRQo+ICAg
ICA+ICAJICBQcm92aWRlcyBhIGRyaXZlciBmb3IgYSBkZXZpY2UgKFNhdGVsbGl0ZSBNQykgdG8K
PiAgICAgPiAgCSAgcmVjZWl2ZSByZXF1ZXN0cyBhbmQgc2VuZCByZXNwb25zZXMgYmFjayB0byB0
aGUgQk1DIHZpYQo+ICAgICA+ICAJICB0aGUgSVBNQiBpbnRlcmZhY2UuIFRoaXMgbW9kdWxlIHJl
cXVpcmVzIEkyQyBzdXBwb3J0Lgo+ICAgICA+ICsKPiAgICAgPiArY29uZmlnIElQTUJfU01CVVNf
RElTQUJMRQo+ICAgICA+ICsJYm9vbCAnRGlzYWJsZSBTTUJVUyBwcm90b2NvbCBmb3Igc2VuZGlu
ZyBwYWNrZXQgdG8gSVBNQiBkZXZpY2UnCj4gICAgID4gKwlkZXBlbmRzIG9uIElQTUJfREVWSUNF
X0lOVEVSRkFDRQo+ICAgICA+ICsJaGVscAo+ICAgICA+ICsJICBwcm92aWRlcyBmdW5jdGlvbmFs
aXR5IG9mIHNlbmRpbmcgcmF3IGkyYyBwYWNrZXRzIHRvIElQTUIgZGV2aWNlLgo+ICAgICA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2NoYXIvaXBtaS9pcG1iX2Rldl9pbnQuYyBiL2RyaXZlcnMvY2hh
ci9pcG1pL2lwbWJfZGV2X2ludC5jCj4gICAgID4gaW5kZXggYWUzYmZiYTI3NTI2Li4yNDE5Yjlh
OTI4YjIgMTAwNjQ0Cj4gICAgID4gLS0tIGEvZHJpdmVycy9jaGFyL2lwbWkvaXBtYl9kZXZfaW50
LmMKPiAgICAgPiArKysgYi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1iX2Rldl9pbnQuYwo+ICAgICA+
IEBAIC0xMTgsNiArMTE4LDEwIEBAIHN0YXRpYyBzc2l6ZV90IGlwbWJfd3JpdGUoc3RydWN0IGZp
bGUgKmZpbGUsIGNvbnN0IGNoYXIgX191c2VyICpidWYsCj4gICAgID4gIAlzdHJ1Y3QgaXBtYl9k
ZXYgKmlwbWJfZGV2ID0gdG9faXBtYl9kZXYoZmlsZSk7Cj4gICAgID4gIAl1OCBycV9zYSwgbmV0
Zl9ycV9sdW4sIG1zZ19sZW47Cj4gICAgID4gIAl1bmlvbiBpMmNfc21idXNfZGF0YSBkYXRhOwo+
ICAgICA+ICsjaWZkZWYgQ09ORklHX0lQTUJfU01CVVNfRElTQUJMRQo+ICAgICA+ICsJdW5zaWdu
ZWQgY2hhciAqaTJjX2J1ZjsKPiAgICAgPiArCXN0cnVjdCBpMmNfbXNnIGkyY19tc2c7Cj4gICAg
ID4gKyNlbmRpZgo+ICAgICA+ICAJdTggbXNnW01BWF9NU0dfTEVOXTsKPiAgICAgPiAgCXNzaXpl
X3QgcmV0Owo+ICAgICA+ICAKPiAgICAgPiBAQCAtMTMzLDYgKzEzNywzMSBAQCBzdGF0aWMgc3Np
emVfdCBpcG1iX3dyaXRlKHN0cnVjdCBmaWxlICpmaWxlLCBjb25zdCBjaGFyIF9fdXNlciAqYnVm
LAo+ICAgICA+ICAJcnFfc2EgPSBHRVRfN0JJVF9BRERSKG1zZ1tSUV9TQV84QklUX0lEWF0pOwo+
ICAgICA+ICAJbmV0Zl9ycV9sdW4gPSBtc2dbTkVURk5fTFVOX0lEWF07Cj4gICAgID4gIAo+ICAg
ICA+ICsjaWZkZWYgQ09ORklHX0lQTUJfU01CVVNfRElTQUJMRQo+ICAgICA+ICsJLyoKPiAgICAg
PiArCSAqIHN1YnRyYWN0IDEgYnl0ZSAocnFfc2EpIGZyb20gdGhlIGxlbmd0aCBvZiB0aGUgbXNn
IHBhc3NlZCB0bwo+ICAgICA+ICsJICogcmF3IGkyY190cmFuc2Zlcgo+ICAgICA+ICsJICovCj4g
ICAgID4gKwltc2dfbGVuID0gbXNnW0lQTUJfTVNHX0xFTl9JRFhdIC0gMTsKPiAgICAgPiArCj4g
ICAgID4gKwlpMmNfYnVmID0ga3phbGxvYyhtc2dfbGVuLCBHRlBfS0VSTkVMKTsKPiAgICAgPiAr
CWlmICghaTJjX2J1ZikKPiAgICAgPiArCQlyZXR1cm4gLUVGQVVMVDsKPiAgICAgPiArCj4gICAg
ID4gKwkvKiBDb3B5IG1lc3NhZ2UgdG8gYnVmZmVyIGV4Y2VwdCBmaXJzdCAyIGJ5dGVzIChsZW5n
dGggYW5kIGFkZHJlc3MpICovCj4gICAgID4gKwltZW1jcHkoaTJjX2J1ZiwgbXNnKzIsIG1zZ19s
ZW4pOwo+ICAgICA+ICsKPiAgICAgPiArCWkyY19tc2cuYWRkciA9IHJxX3NhOwo+ICAgICA+ICsJ
aTJjX21zZy5mbGFncyA9IGlwbWJfZGV2LT5jbGllbnQtPmZsYWdzICYKPiAgICAgPiArCQkJKEky
Q19NX1RFTiB8IEkyQ19DTElFTlRfUEVDIHwgSTJDX0NMSUVOVF9TQ0NCKTsKPiAgICAgPiArCWky
Y19tc2cubGVuID0gbXNnX2xlbjsKPiAgICAgPiArCWkyY19tc2cuYnVmID0gaTJjX2J1ZjsKPiAg
ICAgPiArCj4gICAgID4gKwlyZXQgPSBpMmNfdHJhbnNmZXIoaXBtYl9kZXYtPmNsaWVudC0+YWRh
cHRlciwgJmkyY19tc2csIDEpOwo+ICAgICA+ICsJa2ZyZWUoaTJjX2J1Zik7Cj4gICAgID4gKwo+
ICAgICA+ICsJcmV0dXJuIChyZXQgPT0gMSkgPyBjb3VudCA6IHJldDsKPiAgICAgPiArI2Vsc2UK
PiAgICAgPiAgCS8qCj4gICAgID4gIAkgKiBzdWJ0cmFjdCBycV9zYSBhbmQgbmV0Zl9ycV9sdW4g
ZnJvbSB0aGUgbGVuZ3RoIG9mIHRoZSBtc2cgcGFzc2VkIHRvCj4gICAgID4gIAkgKiBpMmNfc21i
dXNfeGZlcgo+ICAgICA+IEBAIC0xNDksNiArMTc4LDcgQEAgc3RhdGljIHNzaXplX3QgaXBtYl93
cml0ZShzdHJ1Y3QgZmlsZSAqZmlsZSwgY29uc3QgY2hhciBfX3VzZXIgKmJ1ZiwKPiAgICAgPiAg
CQkJICAgICBJMkNfU01CVVNfQkxPQ0tfREFUQSwgJmRhdGEpOwo+ICAgICA+ICAKPiAgICAgPiAg
CXJldHVybiByZXQgPyA6IGNvdW50Owo+ICAgICA+ICsjZW5kaWYKPiAgICAgPiAgfQo+ICAgICA+
ICAKPiAgICAgPiAgc3RhdGljIHVuc2lnbmVkIGludCBpcG1iX3BvbGwoc3RydWN0IGZpbGUgKmZp
bGUsIHBvbGxfdGFibGUgKndhaXQpCj4gICAgID4gLS0gCj4gICAgID4gMi4xNy4xCj4gICAgID4g
Cj4gICAgIAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9s
aXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
