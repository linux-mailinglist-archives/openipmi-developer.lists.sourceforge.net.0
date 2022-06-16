Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EE56854EB76
	for <lists+openipmi-developer@lfdr.de>; Thu, 16 Jun 2022 22:48:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1o1wPK-00013I-9x; Thu, 16 Jun 2022 20:48:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <christophe.jaillet@wanadoo.fr>) id 1o1wPJ-00013C-5f
 for openipmi-developer@lists.sourceforge.net; Thu, 16 Jun 2022 20:48:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gkAmLUJr5kw9w9VqR1QZgazY8vlfSokmb0cdq/9RElI=; b=E9nCZNh08lUV6HFWj2ndl8JPNN
 ATvP5/Lc0g6iR6dAGINKkCCi+/CHLUIffQtzcjY6bfVtxR1qKXTGMEv1gDRED4DYC7s1tWTamCHb1
 rZ/2LZspZOeM8VkWI93tqqUIcEqzrY8DFjx+Y+yRqInr1dGVwj8t6OuloDAeDcxt8tXM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gkAmLUJr5kw9w9VqR1QZgazY8vlfSokmb0cdq/9RElI=; b=epnyhP/eYIdmYZZd9hfZ4rr1jN
 DFaQoGJEyAGEebhNab3NRVOFTLLes2e4tmGNw/f4rHdn+ybqYeXeLo+vr3tvAYiKVNzpokg8JqiBX
 Pfvo4ylt9sGuNSvyek2vF3QlXclrieh78RP0Tf0sfM52d04/GvzDfEKluWNiALQQ3LKU=;
Received: from [80.12.242.126] (helo=smtp.smtpout.orange.fr)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o1wPF-004Tym-LC
 for openipmi-developer@lists.sourceforge.net; Thu, 16 Jun 2022 20:48:01 +0000
Received: from [192.168.1.18] ([90.11.190.129]) by smtp.orange.fr with ESMTPA
 id 1wOxofIO0IaWO1wOxo5r6G; Thu, 16 Jun 2022 22:47:44 +0200
X-ME-Helo: [192.168.1.18]
X-ME-Auth: YWZlNiIxYWMyZDliZWIzOTcwYTEyYzlhMmU3ZiQ1M2U2MzfzZDfyZTMxZTBkMTYyNDBjNDJlZmQ3ZQ==
X-ME-Date: Thu, 16 Jun 2022 22:47:44 +0200
X-ME-IP: 90.11.190.129
Message-ID: <7b9923c0-50f0-556a-657c-9cf0ef9af5aa@wanadoo.fr>
Date: Thu, 16 Jun 2022 22:47:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: fr
To: quan@os.amperecomputing.com
References: <20220615090259.1121405-1-quan@os.amperecomputing.com>
 <20220615090259.1121405-2-quan@os.amperecomputing.com>
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <20220615090259.1121405-2-quan@os.amperecomputing.com>
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Le 15/06/2022 à 11:02, Quan Nguyen a écrit : > The SMBus
    system interface (SSIF) IPMI BMC driver can be used to perform > in-band
   IPMI communication with their host in management (BMC) side. > > Th [...] 
 
 Content analysis details:   (-0.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [80.12.242.126 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [80.12.242.126 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1o1wPF-004Tym-LC
Subject: Re: [Openipmi-developer] [PATCH v8 1/3] ipmi: ssif_bmc: Add SSIF
 BMC driver
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
Cc: devicetree@vger.kernel.org, minyard@acm.org, linux-aspeed@lists.ozlabs.org,
 andrew@aj.id.au, benh@kernel.crashing.org, openbmc@lists.ozlabs.org,
 thang@os.amperecomputing.com, brendanhiggins@google.com,
 linux-kernel@vger.kernel.org, phong@os.amperecomputing.com, wsa@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 openipmi-developer@lists.sourceforge.net, patches@amperecomputing.com,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

TGUgMTUvMDYvMjAyMiDDoCAxMTowMiwgUXVhbiBOZ3V5ZW4gYSDDqWNyaXTCoDoKPiBUaGUgU01C
dXMgc3lzdGVtIGludGVyZmFjZSAoU1NJRikgSVBNSSBCTUMgZHJpdmVyIGNhbiBiZSB1c2VkIHRv
IHBlcmZvcm0KPiBpbi1iYW5kIElQTUkgY29tbXVuaWNhdGlvbiB3aXRoIHRoZWlyIGhvc3QgaW4g
bWFuYWdlbWVudCAoQk1DKSBzaWRlLgo+IAo+IFRoYW5rcyBEYW4gZm9yIHRoZSBjb3B5X2Zyb21f
dXNlcigpIGZpeCBpbiB0aGUgbGluayBiZWxvdy4KPiAKPiBMaW5rOiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9saW51eC1hcm0ta2VybmVsLzIwMjIwMzEwMTE0MTE5LjEzNzM2LTQtcXVhbi1zaGV4
Nk1OUVIySi9TZkR6Zjc4YXp6S3pFRHhZbGVYREBwdWJsaWMuZ21hbmUub3JnLwo+IFNpZ25lZC1v
ZmYtYnk6IFF1YW4gTmd1eWVuIDxxdWFuLXNoZXg2TU5RUjJKL1NmRHpmNzhhenpLekVEeFlsZVhE
QHB1YmxpYy5nbWFuZS5vcmc+Cj4gLS0tCgpIaSwKCmEgZmV3IG5pdHBpY2sgYmVsb3cKClsuLi5d
Cgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2NoYXIvaXBtaS9zc2lmX2JtYy5jIGIvZHJpdmVycy9j
aGFyL2lwbWkvc3NpZl9ibWMuYwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAw
MDAwMDAwLi4wYmZkNGI5YmJhZjEKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9jaGFy
L2lwbWkvc3NpZl9ibWMuYwo+IEBAIC0wLDAgKzEsODgwIEBACj4gKy8vIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkKPiArLyoKPiArICogVGhlIGRyaXZlciBmb3IgQk1DIHNp
ZGUgb2YgU1NJRiBpbnRlcmZhY2UKPiArICoKPiArICogQ29weXJpZ2h0IChjKSAyMDIyLCBBbXBl
cmUgQ29tcHV0aW5nIExMQwo+ICsgKgo+ICsgKi8KPiArCj4gKyNpbmNsdWRlIDxsaW51eC9pMmMu
aD4KPiArI2luY2x1ZGUgPGxpbnV4L21pc2NkZXZpY2UuaD4KPiArI2luY2x1ZGUgPGxpbnV4L21v
ZHVsZS5oPgo+ICsjaW5jbHVkZSA8bGludXgvb2YuaD4KPiArI2luY2x1ZGUgPGxpbnV4L3BsYXRm
b3JtX2RldmljZS5oPgo+ICsjaW5jbHVkZSA8bGludXgvcG9sbC5oPgo+ICsjaW5jbHVkZSA8bGlu
dXgvc2NoZWQuaD4KPiArI2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+Cj4gKyNpbmNsdWRlIDxsaW51
eC9zcGlubG9jay5oPgo+ICsjaW5jbHVkZSA8bGludXgvdGltZXIuaD4KPiArI2luY2x1ZGUgPGxp
bnV4L2ppZmZpZXMuaD4KPiArI2luY2x1ZGUgPGxpbnV4L2lwbWlfc3NpZl9ibWMuaD4KPiArCj4g
KyNkZWZpbmUgREVWSUNFX05BTUUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJpcG1pLXNz
aWYtaG9zdCIKPiArCj4gKyNkZWZpbmUgR0VUXzhCSVRfQUREUihhZGRyXzdiaXQpICAgICAgICAg
ICAgICAgICgoKGFkZHJfN2JpdCkgPDwgMSkgJiAweGZmKQo+ICsKPiArLyogQSBzdGFuZGFyZCBT
TUJ1cyBUcmFuc2FjdGlvbiBpcyBsaW1pdGVkIHRvIDMyIGRhdGEgYnl0ZXMgKi8KPiArI2RlZmlu
ZSBNQVhfUEFZTE9BRF9QRVJfVFJBTlNBQ1RJT04gICAgICAgICAgICAgMzIKPiArLyogVHJhbnNh
Y3Rpb24gaW5jbHVkZXMgdGhlIGFkZHJlc3MsIHRoZSBjb21tYW5kLCB0aGUgbGVuZ3RoIGFuZCB0
aGUgUEVDIGJ5dGUgKi8KPiArI2RlZmluZSBNQVhfVFJBTlNBQ1RJT04gICAgICAgICAgICAgICAg
ICAgICAgICAgKE1BWF9QQVlMT0FEX1BFUl9UUkFOU0FDVElPTiArIDQpCj4gKwo+ICsjZGVmaW5l
IE1BWF9JUE1JX0RBVEFfUEVSX1NUQVJUX1RSQU5TQUNUSU9OICAgICAzMAo+ICsjZGVmaW5lIE1B
WF9JUE1JX0RBVEFfUEVSX01JRERMRV9UUkFOU0FDVElPTiAgICAzMQo+ICsKPiArI2RlZmluZSBT
U0lGX0lQTUlfU0lOR0xFUEFSVF9XUklURSAgICAgICAgICAgICAgMHgyCj4gKyNkZWZpbmUgU1NJ
Rl9JUE1JX1NJTkdMRVBBUlRfUkVBRCAgICAgICAgICAgICAgIDB4Mwo+ICsjZGVmaW5lIFNTSUZf
SVBNSV9NVUxUSVBBUlRfV1JJVEVfU1RBUlQgICAgICAgICAweDYKPiArI2RlZmluZSBTU0lGX0lQ
TUlfTVVMVElQQVJUX1dSSVRFX01JRERMRSAgICAgICAgMHg3Cj4gKyNkZWZpbmUgU1NJRl9JUE1J
X01VTFRJUEFSVF9XUklURV9FTkQgICAgICAgICAgIDB4OAo+ICsjZGVmaW5lIFNTSUZfSVBNSV9N
VUxUSVBBUlRfUkVBRF9TVEFSVCAgICAgICAgICAweDMKPiArI2RlZmluZSBTU0lGX0lQTUlfTVVM
VElQQVJUX1JFQURfTUlERExFICAgICAgICAgMHg5Cj4gKwo+ICsvKgo+ICsgKiBJUE1JIDIuMCBT
cGVjLCBzZWN0aW9uIDEyLjcgU1NJRiBUaW1pbmcsCj4gKyAqIFJlcXVlc3QtdG8tUmVzcG9uc2Ug
VGltZSBpcyBUNm1heCgyNTBtcykgLSBUMW1heCgyMG1zKSAtIDNtcyA9IDIyN21zCj4gKyAqIFJl
Y292ZXIgc3NpZl9ibWMgZnJvbSBidXN5IHN0YXRlIGlmIGl0IHRha2VzIHVwIHRvIDUwMG1zCj4g
KyAqLwo+ICsjZGVmaW5lIFJFU1BPTlNFX1RJTUVPVVQgICAgICAgICAgICAgICAgICAgICAgICA1
MDAgLyogbXMgKi8KPiArCj4gK3N0cnVjdCBzc2lmX3BhcnRfYnVmZmVyIHsKPiArCXU4IGFkZHJl
c3M7Cj4gKwl1OCBzbWJ1c19jbWQ7Cj4gKwl1OCBsZW5ndGg7Cj4gKwl1OCBwYXlsb2FkW01BWF9Q
QVlMT0FEX1BFUl9UUkFOU0FDVElPTl07Cj4gKwl1OCBwZWM7Cj4gKwl1OCBpbmRleDsKPiArfTsK
PiArCj4gKy8qCj4gKyAqIFNTSUYgaW50ZXJuYWwgc3RhdGVzOgo+ICsgKiAgIFNTSUZfUkVBRFkg
ICAgICAgICAweDAwIDogUmVhZHkgc3RhdGUKPiArICogICBTU0lGX1NUQVJUICAgICAgICAgMHgw
MSA6IFN0YXJ0IHNtYnVzIHRyYW5zYWN0aW9uCj4gKyAqICAgU1NJRl9TTUJVU19DTUQgICAgIDB4
MDIgOiBSZWNlaXZlZCBTTUJ1cyBjb21tYW5kCj4gKyAqICAgU1NJRl9SRVFfUkVDVklORyAgIDB4
MDMgOiBSZWNlaXZpbmcgcmVxdWVzdAo+ICsgKiAgIFNTSUZfUkVTX1NFTkRJTkcgICAweDA0IDog
U2VuZGluZyByZXNwb25zZQo+ICsgKiAgIFNTSUZfQkFEX1NNQlVTICAgICAweDA1IDogQmFkIFNN
YnVzIHRyYW5zYWN0aW9uCgpJZiB0aGVzZSBzdGF0ZXMgYXJlIHJlbGF0ZWQgdG8gdGhlIGVudW0g
anVzdCBiZWxvdywgCnMvU1NJRl9CQURfU01CVVMvU1NJRl9BQk9SVElORy8gKyBkZXNjcmlwdGlv
biB1cGRhdGU/Cgo+ICsgKi8KPiArZW51bSBzc2lmX3N0YXRlIHsKPiArCVNTSUZfUkVBRFksCj4g
KwlTU0lGX1NUQVJULAo+ICsJU1NJRl9TTUJVU19DTUQsCj4gKwlTU0lGX1JFUV9SRUNWSU5HLAo+
ICsJU1NJRl9SRVNfU0VORElORywKPiArCVNTSUZfQUJPUlRJTkcsCj4gKwlTU0lGX1NUQVRFX01B
WAo+ICt9Owo+ICsKClsuLi5dCgo+ICtzdGF0aWMgaW50IHNzaWZfYm1jX3Byb2JlKHN0cnVjdCBp
MmNfY2xpZW50ICpjbGllbnQsIGNvbnN0IHN0cnVjdCBpMmNfZGV2aWNlX2lkICppZCkKPiArewo+
ICsJc3RydWN0IHNzaWZfYm1jX2N0eCAqc3NpZl9ibWM7Cj4gKwlpbnQgcmV0Owo+ICsKPiArCXNz
aWZfYm1jID0gZGV2bV9remFsbG9jKCZjbGllbnQtPmRldiwgc2l6ZW9mKCpzc2lmX2JtYyksIEdG
UF9LRVJORUwpOwo+ICsJaWYgKCFzc2lmX2JtYykKPiArCQlyZXR1cm4gLUVOT01FTTsKPiArCj4g
KwlzcGluX2xvY2tfaW5pdCgmc3NpZl9ibWMtPmxvY2spOwo+ICsKPiArCWluaXRfd2FpdHF1ZXVl
X2hlYWQoJnNzaWZfYm1jLT53YWl0X3F1ZXVlKTsKPiArCXNzaWZfYm1jLT5yZXF1ZXN0X2F2YWls
YWJsZSA9IGZhbHNlOwo+ICsJc3NpZl9ibWMtPnJlc3BvbnNlX2luX3Byb2dyZXNzID0gZmFsc2U7
Cj4gKwlzc2lmX2JtYy0+YnVzeSA9IGZhbHNlOwo+ICsJc3NpZl9ibWMtPnJlc3BvbnNlX3RpbWVy
X2luaXRlZCA9IGZhbHNlOwo+ICsKPiArCS8qIFJlZ2lzdGVyIG1pc2MgZGV2aWNlIGludGVyZmFj
ZSAqLwo+ICsJc3NpZl9ibWMtPm1pc2NkZXYubWlub3IgPSBNSVNDX0RZTkFNSUNfTUlOT1I7Cj4g
Kwlzc2lmX2JtYy0+bWlzY2Rldi5uYW1lID0gREVWSUNFX05BTUU7Cj4gKwlzc2lmX2JtYy0+bWlz
Y2Rldi5mb3BzID0gJnNzaWZfYm1jX2ZvcHM7Cj4gKwlzc2lmX2JtYy0+bWlzY2Rldi5wYXJlbnQg
PSAmY2xpZW50LT5kZXY7Cj4gKwlyZXQgPSBtaXNjX3JlZ2lzdGVyKCZzc2lmX2JtYy0+bWlzY2Rl
dik7Cj4gKwlpZiAocmV0KQo+ICsJCWdvdG8gb3V0OwoKQ291bGQgYmUgInJldHVybiByZXQ7Igoo
c2VlIGJlbG93KQoKPiArCj4gKwlzc2lmX2JtYy0+Y2xpZW50ID0gY2xpZW50Owo+ICsJc3NpZl9i
bWMtPmNsaWVudC0+ZmxhZ3MgfD0gSTJDX0NMSUVOVF9TTEFWRTsKPiArCj4gKwkvKiBSZWdpc3Rl
ciBJMkMgc2xhdmUgKi8KPiArCWkyY19zZXRfY2xpZW50ZGF0YShjbGllbnQsIHNzaWZfYm1jKTsK
PiArCXJldCA9IGkyY19zbGF2ZV9yZWdpc3RlcihjbGllbnQsIHNzaWZfYm1jX2NiKTsKPiArCWlm
IChyZXQpIHsKPiArCQltaXNjX2RlcmVnaXN0ZXIoJnNzaWZfYm1jLT5taXNjZGV2KTsKPiArCQln
b3RvIG91dDsKPiArCX0KPiArCj4gKwlyZXR1cm4gMDsKPiArb3V0Ogo+ICsJZGV2bV9rZnJlZSgm
Y2xpZW50LT5kZXYsIHNzaWZfYm1jKTsKClRoaXMgbG9va3MgdXNlbGVzcyB0byBtZS4gVGhlIHdo
b2xlIGVycm9yIGhhbmRsaW5nIHBhdGggY291bGQgYmUgCnJlbW92ZWQsIG9yIHVwZGF0ZWQgdG8g
b25seSBoYXZlIHRoZSAibWlzY19kZXJlZ2lzdGVyKCkiIGFib3ZlLgoKQ0oKCj4gKwlyZXR1cm4g
cmV0Owo+ICt9CgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBs
aXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMv
bGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
