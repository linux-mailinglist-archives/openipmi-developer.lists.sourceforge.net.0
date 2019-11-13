Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F3496FBB0F
	for <lists+openipmi-developer@lfdr.de>; Wed, 13 Nov 2019 22:47:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iV0UN-0006p1-ON; Wed, 13 Nov 2019 21:47:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1iV0UL-0006oj-R6
 for openipmi-developer@lists.sourceforge.net; Wed, 13 Nov 2019 21:47:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Pc7cQHv8eKuylt4BamVYue24j7XUatjlDeaalEngXsI=; b=Z74lPqnSSSY4fC2fkQgGUjDodB
 qv0yTSETrxEgfni52EOdh4iVmByFlYkq5T5U/BodAsOqecev4N6lvN0CRWmRKIE6E5lU+fmFpjeDW
 7mRnBRe9dNnvDNEfBl6YqRqhi9RKbN4cLXS/W5bTWp7XGGEJUbFMoEzmlyZ8X6dXDQBA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Pc7cQHv8eKuylt4BamVYue24j7XUatjlDeaalEngXsI=; b=ZQY6TdgYh6FwK+YEN/BbG0mAN9
 Gnk7wqenRwZN4pbV8AsXEEtAE7ekskneYQ7/K62A4BEsawt9Pc0uvq4QsDr1nAzjgKNN6jMVJprmK
 iMM9zHlyAO/n53b6IkVDCq4EYMxBRCXjZxU0rrkTYlkUgJsldbaAo+FB+q0/CwVq+NDg=;
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iV0UI-00FldH-Bp
 for openipmi-developer@lists.sourceforge.net; Wed, 13 Nov 2019 21:47:45 +0000
Received: by mail-oi1-f193.google.com with SMTP id 22so3258712oip.7
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 13 Nov 2019 13:47:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=Pc7cQHv8eKuylt4BamVYue24j7XUatjlDeaalEngXsI=;
 b=ZGE1sAI1FX/0817aF8CL0cOgRiiuy79SHphe7PDD6X619//0CimbipWKjj9OxHourt
 50kArF0uxa5fpyvxkc7WSr6sgRAODjMcvNMOAoCeVLbMZUQvjA4GmU+c9FTN91MOve7e
 dfpVyrSTAsxtcaR1FNfGB6y2ddpHtRJ3dX9vjiAJWsq9t+8ENSgITp2CjoiSwaR/0ufJ
 JXLcyy+F82/xbdX/0jIYxHWwlQLk3rIp6iYkbtVh/SX0PgsjBK6k/WdopKnyLdBcQ3te
 k3jGg57bcdeHlAe+A3cTEQkbBsxlpqFxyEjzr2mMw7kjDO7j6wvQ9IBysUlBBEhsvwMm
 ICFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=Pc7cQHv8eKuylt4BamVYue24j7XUatjlDeaalEngXsI=;
 b=gdVboHHf+VDDBAuF9XyzYTWTOUAM2dH7AyNRpCs/UEFCUu51y93829om0PO9ELWdmi
 4gwWrrXf+JsfIjedW7jKql0sYmLR8w40kAX/wJA3f0kOv1tMncdFk0fpNiEccqg4GdMm
 IWpeGz+NLS1vgCq75qvD6IC5WGit/O/bh2TCRTTWErR0DjUUqGjDytP8bgixDUazM9bm
 yCkRO6R7oEJ534WnUYMPxtRoZi5QEDFgF9tR03ggc1LWifnBdBU2IP0VUL/lA/146fZT
 NQfjTrgs2UYgpZtnV7df4L8aVomuC3/J8gdT/PIOQr9yDiwySLTbX/V8TRkJaOiJ0Oi1
 vP5w==
X-Gm-Message-State: APjAAAW/rK/9n8bHoxWuc5UNQe8NqE4DYCyn9/Hq1MYWQIupzjZIe7cv
 R0AyTVcu0lfcraL3PPjipg==
X-Google-Smtp-Source: APXvYqx/I0MG+m8QXEYTbGrRDCwsZsePNxEluLbGTyay3HgyRFUDS13Sfo9kWINqSu4vuRC9aHbZvA==
X-Received: by 2002:aca:da02:: with SMTP id r2mr740190oig.172.1573681655999;
 Wed, 13 Nov 2019 13:47:35 -0800 (PST)
Received: from serve.minyard.net ([47.184.136.59])
 by smtp.gmail.com with ESMTPSA id d205sm1122028oig.28.2019.11.13.13.47.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 13:47:35 -0800 (PST)
Received: from minyard.net (unknown [192.168.27.180])
 by serve.minyard.net (Postfix) with ESMTPSA id 9C9C1180046;
 Wed, 13 Nov 2019 21:47:34 +0000 (UTC)
Date: Wed, 13 Nov 2019 15:47:33 -0600
From: Corey Minyard <minyard@acm.org>
To: Vijay Khemka <vijaykhemka@fb.com>
Message-ID: <20191113214733.GO2882@minyard.net>
References: <20191113192325.2821207-1-vijaykhemka@fb.com>
 <DB6PR0501MB2712FAF45EE8CB2D513465A9DA760@DB6PR0501MB2712.eurprd05.prod.outlook.com>
 <AC2A7BB8-52D0-4CAF-9C72-58C9CF5A4F55@fb.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AC2A7BB8-52D0-4CAF-9C72-58C9CF5A4F55@fb.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: acm.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iV0UI-00FldH-Bp
Subject: Re: [Openipmi-developer] [PATCH v3] drivers: ipmi: Support raw i2c
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
Reply-To: minyard@acm.org
Cc: "cminyard@mvista.com" <cminyard@mvista.com>, Sai Dasari <sdasari@fb.com>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Arnd Bergmann <arnd@arndb.de>, "wsa@the-dreams.de" <wsa@the-dreams.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gV2VkLCBOb3YgMTMsIDIwMTkgYXQgMDk6Mjg6MTBQTSArMDAwMCwgVmlqYXkgS2hlbWthIHdy
b3RlOgo+IAo+IAo+IO+7v09uIDExLzEzLzE5LCAxMjozMyBQTSwgIkFzbWFhIE1uZWJoaSIgPEFz
bWFhQG1lbGxhbm94LmNvbT4gd3JvdGU6Cj4gCj4gICAgIElubGluZSByZXNwb25zZToKPiAgICAg
Cj4gICAgIC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gICAgIEZyb206IFZpamF5IEtoZW1r
YSA8dmlqYXlraGVta2FAZmIuY29tPiAKPiAgICAgU2VudDogV2VkbmVzZGF5LCBOb3ZlbWJlciAx
MywgMjAxOSAyOjIzIFBNCj4gICAgIFRvOiBDb3JleSBNaW55YXJkIDxtaW55YXJkQGFjbS5vcmc+
OyBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPjsgR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVn
a2hAbGludXhmb3VuZGF0aW9uLm9yZz47IG9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vm
b3JnZS5uZXQ7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKPiAgICAgQ2M6IHZpamF5a2hl
bWthQGZiLmNvbTsgY21pbnlhcmRAbXZpc3RhLmNvbTsgQXNtYWEgTW5lYmhpIDxBc21hYUBtZWxs
YW5veC5jb20+OyBqb2VsQGptcy5pZC5hdTsgbGludXgtYXNwZWVkQGxpc3RzLm96bGFicy5vcmc7
IHNkYXNhcmlAZmIuY29tCj4gICAgIFN1YmplY3Q6IFtQQVRDSCB2M10gZHJpdmVyczogaXBtaTog
U3VwcG9ydCByYXcgaTJjIHBhY2tldCBpbiBJUE1CCj4gICAgIAo+ICAgICBNYW55IElQTUIgZGV2
aWNlcyBkb2Vzbid0IHN1cHBvcnQgc21idXMgcHJvdG9jb2wgYW5kIGN1cnJlbnQgZHJpdmVyIHN1
cHBvcnQgb25seSBzbWJ1cyBkZXZpY2VzLiBBZGRlZCBzdXBwb3J0IGZvciByYXcgaTJjIHBhY2tl
dHMuCj4gICAgIAo+ICAgICBVc2VyIGNhbiBkZWZpbmUgdXNlLWkyYy1ibG9jayBpbiBkZXZpY2Ug
dHJlZSB0byB1c2UgaTJjIHJhdyB0cmFuc2Zlci4KPiAgICAgCj4gICAgIEFzbWFhPj4gRml4IHRo
ZSBkZXNjcmlwdGlvbjogIlRoZSBpcG1iX2Rldl9pbnQgZHJpdmVyIG9ubHkgc3VwcG9ydHMgdGhl
IHNtYnVzIHByb3RvY29sIGF0IHRoZSBtb21lbnQuIEFkZCBzdXBwb3J0IGZvciB0aGUgaTJjIHBy
b3RvY29sIGFzIHdlbGwuIFRoZXJlIHdpbGwgYmUgYSB2YXJpYWJsZSBwYXNzZWQgYnkgdGhvdWdo
IHRoZSBkZXZpY2UgdHJlZSBvciBBQ1BJIHRhYmxlIHdoaWNoIHNldHMgdGhlIGNvbmZpZ3VyZXMg
dGhlIHByb3RvY29sIGFzIGVpdGhlciBpMmMgb3Igc21idXMuIgo+ICAgICAKPiAgICAgU2lnbmVk
LW9mZi1ieTogVmlqYXkgS2hlbWthIDx2aWpheWtoZW1rYUBmYi5jb20+Cj4gICAgIC0tLQo+ICAg
ICAgZHJpdmVycy9jaGFyL2lwbWkvaXBtYl9kZXZfaW50LmMgfCA0OCArKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKwo+ICAgICAgMSBmaWxlIGNoYW5nZWQsIDQ4IGluc2VydGlvbnMoKykK
PiAgICAgCj4gICAgIGRpZmYgLS1naXQgYS9kcml2ZXJzL2NoYXIvaXBtaS9pcG1iX2Rldl9pbnQu
YyBiL2RyaXZlcnMvY2hhci9pcG1pL2lwbWJfZGV2X2ludC5jCj4gICAgIGluZGV4IGFlM2JmYmEy
NzUyNi4uMTZkNWQ0YjYzNmE5IDEwMDY0NAo+ICAgICAtLS0gYS9kcml2ZXJzL2NoYXIvaXBtaS9p
cG1iX2Rldl9pbnQuYwo+ICAgICArKysgYi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1iX2Rldl9pbnQu
Ywo+ICAgICBAQCAtNjMsNiArNjMsNyBAQCBzdHJ1Y3QgaXBtYl9kZXYgewo+ICAgICAgCXNwaW5s
b2NrX3QgbG9jazsKPiAgICAgIAl3YWl0X3F1ZXVlX2hlYWRfdCB3YWl0X3F1ZXVlOwo+ICAgICAg
CXN0cnVjdCBtdXRleCBmaWxlX211dGV4Owo+ICAgICArCWJvb2wgdXNlX2kyYzsKPiAgICAgIH07
Cj4gICAgICAKPiAgICAgQXNtYWE+PiByZW5hbWUgdGhpcyB2YXJpYWJsZSA6IGlzX2kyY19wcm90
b2NvbAo+IERvbmUuCj4gICAgIAo+ICAgICAgc3RhdGljIGlubGluZSBzdHJ1Y3QgaXBtYl9kZXYg
KnRvX2lwbWJfZGV2KHN0cnVjdCBmaWxlICpmaWxlKSBAQCAtMTEyLDYgKzExMywzOSBAQCBzdGF0
aWMgc3NpemVfdCBpcG1iX3JlYWQoc3RydWN0IGZpbGUgKmZpbGUsIGNoYXIgX191c2VyICpidWYs
IHNpemVfdCBjb3VudCwKPiAgICAgIAlyZXR1cm4gcmV0IDwgMCA/IHJldCA6IGNvdW50Owo+ICAg
ICAgfQo+ICAgICAgCj4gICAgICtzdGF0aWMgaW50IGlwbWJfaTJjX3dyaXRlKHN0cnVjdCBpMmNf
Y2xpZW50ICpjbGllbnQsIHU4ICptc2cpIHsKPiAgICAgKwl1bnNpZ25lZCBjaGFyICppMmNfYnVm
Owo+ICAgICArCXN0cnVjdCBpMmNfbXNnIGkyY19tc2c7Cj4gICAgICsJc3NpemVfdCByZXQ7Cj4g
ICAgICsJdTggbXNnX2xlbjsKPiAgICAgKwo+ICAgICArCS8qCj4gICAgICsJICogc3VidHJhY3Qg
MSBieXRlIChycV9zYSkgZnJvbSB0aGUgbGVuZ3RoIG9mIHRoZSBtc2cgcGFzc2VkIHRvCj4gICAg
ICsJICogcmF3IGkyY190cmFuc2Zlcgo+ICAgICArCSAqLwo+ICAgICArCW1zZ19sZW4gPSBtc2db
SVBNQl9NU0dfTEVOX0lEWF0gLSAxOwo+ICAgICArCj4gICAgICsJaTJjX2J1ZiA9IGt6YWxsb2Mo
bXNnX2xlbiwgR0ZQX0tFUk5FTCk7Cj4gICAgIAo+ICAgICBBc21hYSA+PiBXZSBkbyBub3Qgd2Fu
dCB0byB1c2Uga3phbGxvYyBldmVyeSB0aW1lIHlvdSBleGVjdXRlIHRoaXMgd3JpdGUgZnVuY3Rp
b24uIEl0IHdvdWxkIGNyZWF0ZSBzbyBtdWNoIGZyYWdtZW50YXRpb24uCj4gICAgIFlvdSBkb24n
dCByZWFsbHkgbmVlZCB0byB1c2Uga3phbGxvYyBhbnl3YXlzLiAKPiBXZSBuZWVkIHRvIGFsbG9j
YXRlIG1lbW9yeSB0byBwYXNzIHRvIGkyY190cmFuc2Zlci4gVGhhdCdzIHdoYXQgYmVpbmcgZG9u
ZSBpbiBpMmNfc21idXNfeGZlciBmdW5jdGlvbiBhcyB3ZWxsLgo+ICAgICAKPiAgICAgQWxzbywg
dGhpcyBjb2RlIGNodW5rIGlzIHNob3J0LCBzbyB5b3UgY2FuIGNhbGwgaXQgZGlyZWN0bHkgZnJv
bSB0aGUgd3JpdGUgZnVuY3Rpb24uIEkgZG9uJ3QgdGhpbmsgeW91IG5lZWQgYSBzZXBhcmF0ZSBm
dW5jdGlvbiBmb3IgaXQuCj4gSSB3YW50ZWQgdG8ga2VlcCB0aGlzIGNoYW5nZSBhcyBjbGVhbiBh
cyBwb3NzaWJsZS4KCkknZCBhZ3JlZS4gIEZyYWdtZW50YXRpb24gaXMgbm90IGEgYmlnIGRlYWwg
aGVyZS4KCkhvd2V2ZXIsIHdoeSBub3QganVzdCBwYXNzIGluIG1zZyArIDI/ICBUaGF0IHdvdWxk
IGJlIGNsZWFuZXIsIGZhc3RlciwKYW5kIGxlc3Mgd2FzdGVmdWwuCgo+ICAgICAKPiAgICAgKwlp
ZiAoIWkyY19idWYpCj4gICAgICsJCXJldHVybiAtRUZBVUxUOwoKLUVOT01FTT8gIChBc3N1bWlu
ZyB5b3Uga2VlcCB0aGUgbWFsbG9jKQoKPiAgICAgKwo+ICAgICArCS8qIENvcHkgbWVzc2FnZSB0
byBidWZmZXIgZXhjZXB0IGZpcnN0IDIgYnl0ZXMgKGxlbmd0aCBhbmQgYWRkcmVzcykgKi8KPiAg
ICAgKwltZW1jcHkoaTJjX2J1ZiwgbXNnKzIsIG1zZ19sZW4pOwo+ICAgICArCj4gICAgICsJaTJj
X21zZy5hZGRyID0gR0VUXzdCSVRfQUREUihtc2dbUlFfU0FfOEJJVF9JRFhdKTsKPiAgICAgKwlp
MmNfbXNnLmZsYWdzID0gY2xpZW50LT5mbGFncyAmCj4gICAgICsJCQkoSTJDX01fVEVOIHwgSTJD
X0NMSUVOVF9QRUMgfCBJMkNfQ0xJRU5UX1NDQ0IpOwo+ICAgICBBc21hYT4+IEkgZG9uJ3QgdGhp
bmsgaXBtYiBzdXBwb3J0cyAxMCBiaXQgYWRkcmVzc2VzLiBUaGUgbWF4IG51bWJlciBvZiBiaXRz
IGluIHRoZSBJUE1CIGFkZHJlc3MgZmllbGQgaXMgOC4KPiBEb25lLgo+ICAgICAKPiAgICAgKwlp
MmNfbXNnLmxlbiA9IG1zZ19sZW47Cj4gICAgICsJaTJjX21zZy5idWYgPSBpMmNfYnVmOwo+ICAg
ICArCj4gICAgICsJcmV0ID0gaTJjX3RyYW5zZmVyKGNsaWVudC0+YWRhcHRlciwgJmkyY19tc2cs
IDEpOwo+ICAgICArCWtmcmVlKGkyY19idWYpOwo+ICAgICArCj4gICAgICsJcmV0dXJuIHJldDsK
PiAgICAgKwo+ICAgICArfQo+ICAgICArCj4gICAgICBzdGF0aWMgc3NpemVfdCBpcG1iX3dyaXRl
KHN0cnVjdCBmaWxlICpmaWxlLCBjb25zdCBjaGFyIF9fdXNlciAqYnVmLAo+ICAgICAgCQkJc2l6
ZV90IGNvdW50LCBsb2ZmX3QgKnBwb3MpCj4gICAgICB7Cj4gICAgIEBAIC0xMzMsNiArMTY3LDEy
IEBAIHN0YXRpYyBzc2l6ZV90IGlwbWJfd3JpdGUoc3RydWN0IGZpbGUgKmZpbGUsIGNvbnN0IGNo
YXIgX191c2VyICpidWYsCj4gICAgICAJcnFfc2EgPSBHRVRfN0JJVF9BRERSKG1zZ1tSUV9TQV84
QklUX0lEWF0pOwo+ICAgICAgCW5ldGZfcnFfbHVuID0gbXNnW05FVEZOX0xVTl9JRFhdOwo+ICAg
ICAgCj4gICAgICsJLyogQ2hlY2sgaTJjIGJsb2NrIHRyYW5zZmVyIHZzIHNtYnVzICovCj4gICAg
ICsJaWYgKGlwbWJfZGV2LT51c2VfaTJjKSB7Cj4gICAgICsJCXJldCA9IGlwbWJfaTJjX3dyaXRl
KGlwbWJfZGV2LT5jbGllbnQsIG1zZyk7Cj4gICAgICsJCXJldHVybiAocmV0ID09IDEpID8gY291
bnQgOiByZXQ7Cj4gICAgICsJfQo+ICAgICArCj4gICAgICAJLyoKPiAgICAgIAkgKiBzdWJ0cmFj
dCBycV9zYSBhbmQgbmV0Zl9ycV9sdW4gZnJvbSB0aGUgbGVuZ3RoIG9mIHRoZSBtc2cgcGFzc2Vk
IHRvCj4gICAgICAJICogaTJjX3NtYnVzX3hmZXIKPiAgICAgQEAgLTI3Nyw2ICszMTcsNyBAQCBz
dGF0aWMgaW50IGlwbWJfcHJvYmUoc3RydWN0IGkyY19jbGllbnQgKmNsaWVudCwKPiAgICAgIAkJ
CWNvbnN0IHN0cnVjdCBpMmNfZGV2aWNlX2lkICppZCkKPiAgICAgIHsKPiAgICAgIAlzdHJ1Y3Qg
aXBtYl9kZXYgKmlwbWJfZGV2Owo+ICAgICArCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbnA7Cj4gICAg
ICAJaW50IHJldDsKPiAgICAgIAo+ICAgICAgCWlwbWJfZGV2ID0gZGV2bV9remFsbG9jKCZjbGll
bnQtPmRldiwgc2l6ZW9mKCppcG1iX2RldiksIEBAIC0zMDIsNiArMzQzLDEzIEBAIHN0YXRpYyBp
bnQgaXBtYl9wcm9iZShzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50LAo+ICAgICAgCWlmIChyZXQp
Cj4gICAgICAJCXJldHVybiByZXQ7Cj4gICAgICAKPiAgICAgKwkvKiBDaGVjayBpZiBpMmMgYmxv
Y2sgeG1pdCBuZWVkcyB0byB1c2UgaW5zdGVhZCBvZiBzbWJ1cyAqLwo+ICAgICArCW5wID0gY2xp
ZW50LT5kZXYub2Zfbm9kZTsKPiAgICAgKwlpZiAobnAgJiYgb2ZfZ2V0X3Byb3BlcnR5KG5wLCAi
dXNlLWkyYy1ibG9jayIsIE5VTEwpKQo+ICAgICBBc21hYT4+IFJlbmFtZSB0aGlzIHZhcmlhYmxl
IGkyYy1wcm90b2NvbC4gQW5kIGFsc28sIGFwcGx5IHRoaXMgdG8gQUNQSSBhcyB3ZWxsLgo+IERv
bmUuCgpJIGRvbid0IHRoaW5rIEFDUEkgaXMgdGhhdCBpbXBvcnRhbnQgYXQgdGhlIG1vbWVudC4g
IFJlbmFtZSBpcyBnb29kLgoKPiAgICAgKwkJaXBtYl9kZXYtPnVzZV9pMmMgPSB0cnVlOwo+ICAg
ICArCWVsc2UKPiAgICAgKwkJaXBtYl9kZXYtPnVzZV9pMmMgPSBmYWxzZTsKClRoZSBhYm92ZSB0
d28gbGluZXMgYXJlIHVubmVjZXNzYXJ5LgoKLWNvcmV5Cgo+ICAgICArCj4gICAgICAJaXBtYl9k
ZXYtPmNsaWVudCA9IGNsaWVudDsKPiAgICAgIAlpMmNfc2V0X2NsaWVudGRhdGEoY2xpZW50LCBp
cG1iX2Rldik7Cj4gICAgICAJcmV0ID0gaTJjX3NsYXZlX3JlZ2lzdGVyKGNsaWVudCwgaXBtYl9z
bGF2ZV9jYik7Cj4gICAgIC0tCj4gICAgIDIuMTcuMQo+ICAgICAKPiAgICAgCj4gCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxv
cGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0
Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRl
dmVsb3Blcgo=
