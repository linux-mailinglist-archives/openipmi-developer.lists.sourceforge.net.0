Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5C55ADC98
	for <lists+openipmi-developer@lfdr.de>; Tue,  6 Sep 2022 02:38:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oVMbL-0003va-IY;
	Tue, 06 Sep 2022 00:38:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <i.kononenko@yadro.com>) id 1oQNnr-0002oH-Px
 for openipmi-developer@lists.sourceforge.net;
 Tue, 23 Aug 2022 06:54:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:CC:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6/ruW8y0jMXPjs52dlSheb6b+qO5c41YPFlGVCqzDZE=; b=mrtkhSZaSd3B+SKj8tldjczbuC
 0tXcE7CKI5zWnWqlxqLeP4KHYOVlrRNEsij95qwKW+xOP9ptuCZuU9MWzZMdSdWNhGHsRfs2Yayq9
 +oXpl/PWx66VHzSKzsc7ZhUzcv9h+LvbjUMtVB/gLUg/xbZ3JFeA83ft2KeGmuu00reg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:CC:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6/ruW8y0jMXPjs52dlSheb6b+qO5c41YPFlGVCqzDZE=; b=nSy7dlnKDgRexjUxsmb7/M0E+G
 PsLsuGAiPMwRPabOjZVAUm+lDeP5mstf+AE+GF4X+r+/lxNMQz0oJFZSvUApcY5npDjWIIOHqBfH0
 iGqSmuk7UB/FiEFXD46+89aDMnRRKlns/dfmeTiyAurw/nQMXG2yXMb60+F1c8yt/gpk=;
Received: from mta-02.yadro.com ([89.207.88.252] helo=mta-01.yadro.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oQNnp-00DzOr-MC for openipmi-developer@lists.sourceforge.net;
 Tue, 23 Aug 2022 06:54:23 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-01.yadro.com (Postfix) with ESMTP id E732242CB4;
 Tue, 23 Aug 2022 06:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
 content-transfer-encoding:content-type:content-type:in-reply-to
 :from:from:references:content-language:subject:subject
 :user-agent:mime-version:date:date:message-id:received:received
 :received:received; s=mta-01; t=1661237647; x=1663052048; bh=H/K
 SNmU1gDJ1bmxbU4cTWx1pQlXHm5JLGeYtsagr+sQ=; b=XKlk3hoaIcPlMKOxsso
 D1fcqOHsYhMj6cf/iVFIjPZIefBSBUukHee33ulpY5Jl1aPn+httdmtkTtprsyCc
 0C3SXbu4zfJcZBlsPvahLYxPvOcq4FnYR8EMYsvZtc1KKppkRHqI7P99h99QuzyF
 BPncnYobFutCLsIykHBLUQzs=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
 by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TlkT9Z5kyEBb; Tue, 23 Aug 2022 09:54:07 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (t-exch-02.corp.yadro.com
 [172.17.10.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta-01.yadro.com (Postfix) with ESMTPS id C9C06429F7;
 Tue, 23 Aug 2022 09:54:06 +0300 (MSK)
Received: from T-EXCH-08.corp.yadro.com (172.17.11.58) by
 T-EXCH-02.corp.yadro.com (172.17.10.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.669.32; Tue, 23 Aug 2022 09:54:06 +0300
Received: from [10.178.113.33] (10.178.113.33) by T-EXCH-08.corp.yadro.com
 (172.17.11.58) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.1118.9; Tue, 23 Aug
 2022 09:54:04 +0300
Message-ID: <97ba69b1-1568-f749-1342-72f238fbd33b@yadro.com>
Date: Tue, 23 Aug 2022 09:54:02 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
References: <fb81dda34f9db0b9f743b247a2464576dcccd7c9.1661094034.git.i.kononenko@yadro.com>
 <ad3cd046c4dcb9169aaff6c0b739b23d0a06014d.1661149313.git.i.kononenko@yadro.com>
 <CACPK8Xfe+hPLXcgwWxZtb5H_WG8GRJ7pLfRXG3jupk8ANc7wgQ@mail.gmail.com>
From: i.kononenko <i.kononenko@yadro.com>
In-Reply-To: <CACPK8Xfe+hPLXcgwWxZtb5H_WG8GRJ7pLfRXG3jupk8ANc7wgQ@mail.gmail.com>
X-Originating-IP: [10.178.113.33]
X-ClientProxiedBy: T-EXCH-02.corp.yadro.com (172.17.10.102) To
 T-EXCH-08.corp.yadro.com (172.17.11.58)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 23.08.2022 03:22, Joel Stanley wrote: > «Внимание!
    Данное письмо от внешнего адресата!» > > On
    Mon, 22 Aug 2022 at 06:36, Igor Kononenko <i.kononenko@yadro.c [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oQNnp-00DzOr-MC
X-Mailman-Approved-At: Tue, 06 Sep 2022 00:38:00 +0000
Subject: Re: [Openipmi-developer] [PATCH v2 1/3] ipmi:kcs_bmc: Add cleanup
 regmap(interrupt-regs) on a shutdown.
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
Cc: Corey Minyard <minyard@acm.org>, linux-aspeed@lists.ozlabs.org,
 openbmc@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org,
 kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

CgpPbiAyMy4wOC4yMDIyIDAzOjIyLCBKb2VsIFN0YW5sZXkgd3JvdGU6Cj4gwqvQktC90LjQvNCw
0L3QuNC1ISDQlNCw0L3QvdC+0LUg0L/QuNGB0YzQvNC+INC+0YIg0LLQvdC10YjQvdC10LPQviDQ
sNC00YDQtdGB0LDRgtCwIcK7Cj4gCj4gT24gTW9uLCAyMiBBdWcgMjAyMiBhdCAwNjozNiwgSWdv
ciBLb25vbmVua28gPGkua29ub25lbmtvQHlhZHJvLmNvbT4gd3JvdGU6Cj4+Cj4+IFRoZSBwcmV2
aW9zIHYxIFtQQVRDSCAxLzNdIGhhdmUgZXJyb3Igb2YgZ2V0dGluZyBgc3RydWN0IGtjc19ibWNf
ZGV2aWNlYAo+PiBwb2ludGVyIGZyb20gYHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKmAuIFJlcGxh
Y2VkIHRvIHJldHJpdmVpbmcgcG9pbnRlciBieQo+PiBgcGxhdGZvcm1fZ2V0X2RydmRhdGEoKWAK
PiAKPiBDYW4gd2UgZ2V0IGEgdjMgd2l0aCB5b3VyIG9yaWdpbmFsIGNvbW1pdCBtZXNzYWdlIGFk
ZGVkPyBZb3UgaGFkIGEKPiBnb29kIHdyaXRlIHVwIGluIHYxIGJ1dCBpdCB3YXMgZHJvcHBlZCBp
biB2Mi4KPiAKClRoYW5rcyBmb3IgdGhlIHJldmlldy4KT2ssIEknbGwgaW5jbHVkZSB0aGUgb3Jp
Z2luIGNvbW1pdCBtZXNzYWdlIHRvIGEgdjMuIAoKPiBUaGlzIGNoYW5nZSBsb29rcyBsaWtlIHRo
ZSByaWdodCB0aGluZyB0byBkby4gV2Ugc2hvdWxkIGdldCBBbmRyZXcgdG8KPiByZXZpZXcgdG9v
LCBhcyBoZSBzcGVuZHMgbW9yZSB0aW1lIHdpdGggdGhlIEtDUyBjb250cm9sbGVycy4KPiAKPiBU
aGUgbWlzc2VkIGlycSBpc3N1ZSB3YXMgc2VlbiB3aXRoIHRoZSBvdGhlciBMUEMgc3ViIGRyaXZl
cnMgYmVjYXVzZQo+IHRoZSBjbG9jayB3YXNuJ3QgZW5hYmxlZC4gV2UgZW5kZWQgdXAgd2l0aCB0
aGlzIHBhdGNoOgo+IAo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDIwMTIwODA5MTc0
OC4xOTIwLTEtd2FuZ3poaXFpYW5nLmJqQGJ5dGVkYW5jZS5jb20vCj4+IERvIHdlIG5lZWQgdG8g
ZG8gc29tZXRoaW5nIHNpbWlsYXIgZm9yIEtDUz8KCkFzIGZhciBhcyBJIHNlZSBieSB0aGUgTFBD
ICdub2JvZHkgY2FyZWQgaXJxJyBpc3N1ZSB0aGVyZSBoYWQgdGhlIGZlYXR1cmUgb2YgCmVuYWJs
aW5nIExDTEsgaW5kaXZpZHVhbGx5IGVhcmxpZXIsIHRoZXJlIGlzIHBhdGNoIGFib3V0OgoKaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjExMTAxMjMzNzUxLjQ5MjIyLTUtamFlLmh5dW4u
eW9vQGludGVsLmNvbS8KCk9yaWdpbmFsbHkgSSBmb3VuZCB0aGUgYnVnIG9uIHRoZSBsaW51eC1k
ZXYudjUuNCB0aGF0IGluY2x1ZGVzIHRoZSAnTENMSyBpbmRpdmlkdWFsbHkKZW5hYmxpbmcnIGZl
YXR1cmUuCgpJdCBzZWVtcyB0byBtZSB0aGUgaXNzdWUgaXMgdGhhdCBscGMtc25vb3AgYW5kIHRo
ZSBscGMta2NzIGhhcyBzYW1lIElSUSMzNSB0aGF0IGlzIHVzZWQKaW4gc2VwYXJhdGVkIGRyaXZl
cnMoYnkgdGhlIElSUUZfU0hBUkVEIGZsYWcpLgpUaGUgSVJRIGhhbmRsZXIgZGV0ZXJtaW5hdGUg
cmVxdWVzdCBwdXJwb3NlKGZvciBrY3Mgb3Igc25vb3ApIGJ5IExQQyBpbnRlcnJ1cHQgcmVnaXN0
ZXJzCnN0YXRlLCBhbmQgaWYgc3VjaCBpbnRlcnJ1cHQgaXMgbm90IGZvciBhbnkgb25lIG9mIHRo
ZW0sIHRoZSBpcnEtaGFuZGxlciBwYXNzdGhyb3VnaCAKcmVxdWVzdCB0byBhIG5leHQgaGFuZGxl
ciBieSByZXR1cm5pbmcgYElSUV9OT05FYC4KClNvLCBldmVuIGlmIGxwYy1rY3Mgd2lsbCBiZSBo
YXZpbmcgYWRqdXN0ZWQgb3duIGluZGl2aWR1YWwgTENMSywgdGhhdCBpcyBkb2Vzbid0IHNvbHZl
IAppc3N1ZSwgYmVjYXVzZSB3aGVuIGxwYy1zbm9vcCB3aWxsIGhhZCBjb25maWd1cmVkIGlycS1o
YW5kbGVyIHRoZSBpcnEtbWFuYWdlciB3aWxsIGtub3cgCnRoYXQgZm9yIElSUSMzNSBhbHJlYWR5
IHJlZ2lzdGVyZWQgYSBnb29kIGhhbmRsZXIsIGJ1dCBzdWNoIGhhbmRsZXIgd2lsbCBza2lwIGFs
bCByZXF1ZXN0cwpieSBgSVJRX05PTkVgIGJlY2F1c2Ugc3VjaCBpcnFzIGFyZSBpbnRlbmRlZCBm
b3IgbHBjLWtjcy4gSSBndWVzcyB0aGF0IGlzIHRoZSBwb2ludCBvZiBidWcuCgoKPiAKPj4KPj4g
UmVwb3J0ZWQtYnk6IGtlcm5lbCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgo+PiBTaWduZWQt
b2ZmLWJ5OiBJZ29yIEtvbm9uZW5rbyA8aS5rb25vbmVua29AeWFkcm8uY29tPgo+PiAtLS0KPj4g
IGRyaXZlcnMvY2hhci9pcG1pL2tjc19ibWNfYXNwZWVkLmMgfCA5ICsrKysrKysrKwo+PiAgMSBm
aWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9j
aGFyL2lwbWkva2NzX2JtY19hc3BlZWQuYyBiL2RyaXZlcnMvY2hhci9pcG1pL2tjc19ibWNfYXNw
ZWVkLmMKPj4gaW5kZXggY2RjODhjZGUxZTlhLi44NDM3ZjNjZmUzZjQgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvY2hhci9pcG1pL2tjc19ibWNfYXNwZWVkLmMKPj4gKysrIGIvZHJpdmVycy9jaGFy
L2lwbWkva2NzX2JtY19hc3BlZWQuYwo+PiBAQCAtNjM2LDYgKzYzNiwxNCBAQCBzdGF0aWMgaW50
IGFzcGVlZF9rY3NfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+ICAgICAg
ICAgcmV0dXJuIDA7Cj4+ICB9Cj4+Cj4+ICtzdGF0aWMgdm9pZCBhc3BlZWRfa2NzX3NodXRkb3du
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+ICt7Cj4+ICsgICAgICAgc3RydWN0IGFz
cGVlZF9rY3NfYm1jICpwcml2ID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7Cj4+ICsgICAg
ICAgc3RydWN0IGtjc19ibWNfZGV2aWNlICprY3NfYm1jID0gJnByaXYtPmtjc19ibWM7Cj4+ICsK
Pj4gKyAgICAgICBhc3BlZWRfa2NzX2lycV9tYXNrX3VwZGF0ZShrY3NfYm1jLCAoS0NTX0JNQ19F
VkVOVF9UWVBFX0lCRiksIDApOwo+PiArfQo+PiArCj4+ICBzdGF0aWMgY29uc3Qgc3RydWN0IG9m
X2RldmljZV9pZCBhc3Rfa2NzX2JtY19tYXRjaFtdID0gewo+PiAgICAgICAgIHsgLmNvbXBhdGli
bGUgPSAiYXNwZWVkLGFzdDI0MDAta2NzLWJtYy12MiIgfSwKPj4gICAgICAgICB7IC5jb21wYXRp
YmxlID0gImFzcGVlZCxhc3QyNTAwLWtjcy1ibWMtdjIiIH0sCj4+IEBAIC02NTEsNiArNjU5LDcg
QEAgc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgYXN0X2tjc19ibWNfZHJpdmVyID0gewo+
PiAgICAgICAgIH0sCj4+ICAgICAgICAgLnByb2JlICA9IGFzcGVlZF9rY3NfcHJvYmUsCj4+ICAg
ICAgICAgLnJlbW92ZSA9IGFzcGVlZF9rY3NfcmVtb3ZlLAo+PiArICAgICAgIC5zaHV0ZG93biA9
IGFzcGVlZF9rY3Nfc2h1dGRvd24sCj4+ICB9Owo+PiAgbW9kdWxlX3BsYXRmb3JtX2RyaXZlcihh
c3Rfa2NzX2JtY19kcml2ZXIpOwo+Pgo+PiAtLQo+PiAyLjI1LjEKPj4KCi0tIApCZXN0IHJlZ2Fy
ZHMsCgpJZ29yIEtvbm9uZW5rbwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2
ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5l
dC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
