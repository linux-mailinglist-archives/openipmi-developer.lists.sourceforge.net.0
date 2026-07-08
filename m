Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lOmsGAZETmqVJwIAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Wed, 08 Jul 2026 14:35:18 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E838572657F
	for <lists+openipmi-developer@lfdr.de>; Wed, 08 Jul 2026 14:35:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=KzdmhGYE;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=Fc24Ytu1;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=juc4tgnt;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=sRTrWgeO;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmail.com (policy=none);
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:References:Message-Id:Date:In-Reply-To:From:Mime-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W/1fq/Us7WyUvgbj3Pfpdbbt8oVxmLX2/R/wO4ApIKU=; b=KzdmhGYEavu5kIa/yM+uaoc4tQ
	1ISrxYmxa01h2UBfyVfcgHXLtmicEfMnQm7VGByo1MrH5Qu8ShWItNzphXt7r2tC//eZflO3Avj2i
	iAc55MsTaPNzxpCmtyPhUK0BTLhpwQF5NpwHwRx4pHvWqZ6JaWBeTMdf9/hDoCf2nTwM=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1whRUa-0001nI-KN;
	Wed, 08 Jul 2026 12:35:06 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <shankerwangmiao@gmail.com>) id 1whRCT-0002gb-Fs
 for openipmi-developer@lists.sourceforge.net;
 Wed, 08 Jul 2026 12:16:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:
 Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WtPxIe9ZDXTB4bAnWWhC43OWYPlhSUNmRAB3alNpo8Q=; b=Fc24Ytu1Cp/+U13yqv/31Ig+cB
 /slKN02wWsDyxcfenP0oeZzkId3cS0un8kHRBgsX8loT/ivMl6QylUF/jA6L+ZK6qLMTxh8FcMwq2
 KnWj/Z/tqS9d8787VTqc9pF1O1Ln3HwskrwcIJlbEb7DdjwZnRU8Pmx+VMbfZBO3qTS4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:
 From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WtPxIe9ZDXTB4bAnWWhC43OWYPlhSUNmRAB3alNpo8Q=; b=juc4tgntkp7b1Oh1Yn78trAspf
 g0tdeLXHUdZ7QpspCL6uk4ECYyDO0LCon0JLDgHmDCzyWxeAxJQQMHaCGsKjndAFzDhV97ctLKeTw
 EJiSgPkzxFkrOnjreo1Sa6/9UjxnXETnNNSqn1JvHQFLSU+J5gZ1y+QvB5+0piszKSwk=;
Received: from mail-pl1-f181.google.com ([209.85.214.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1whRCT-00049g-MU for openipmi-developer@lists.sourceforge.net;
 Wed, 08 Jul 2026 12:16:26 +0000
Received: by mail-pl1-f181.google.com with SMTP id
 d9443c01a7336-2caf18d4904so926185ad.2
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 08 Jul 2026 05:16:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1783512975; x=1784117775; darn=lists.sourceforge.net;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:content-type:from:to:cc
 :subject:date:message-id:reply-to:content-type;
 bh=WtPxIe9ZDXTB4bAnWWhC43OWYPlhSUNmRAB3alNpo8Q=;
 b=sRTrWgeOpztNTJV+bH+kCbRJ10nEKfLauC/Jpec1E+JyA9bDtKsy1YVp7lLW/dQXmL
 fqG65mH2Zt9Xmh47zAdSzPFZS5SAK5C/0zqyhlpeiB1S1im75a/oEQtmLxDOljWyR8cz
 IAZvDy6LFrYjyQ5PpAW15Og1HUO6mdVJML7PZH1fKZU+DZ5KBWN/5FQYlvbLQzdnG1Ki
 nM4Yt6XicnOyHXuQh2QhbtJMsjLueCCnbffy3mHeCkR0bmwJkcECMlkWBEZbc3plgzoG
 20AMLdkNXoyKSzTwurVWqzhutrj96J95rGvx4JlSEhhH84CT9d8O8CHuWhHhyqmb1zKd
 F8jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1783512975; x=1784117775;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:content-type:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
 :content-type;
 bh=WtPxIe9ZDXTB4bAnWWhC43OWYPlhSUNmRAB3alNpo8Q=;
 b=Ky7q+kzo0JfwGaxXo6YFkmY10VumUWWGlB7DNQpbESC2wuMcSe7otOkqD4jMZJ7n0Q
 d9SbaG6gEDUGIk29Y5O9YC/br8OMNTr2NuMQ4/XAVQvL7z/Z4w/yw6K86w7WRh+BTCQw
 CFJQS2sPXuoF+zXVHMnAUfrctdNKiBPk+UHqubZs0L5pmPrpvqRo1HCLmDKvmexTYFxW
 kZGM6y86oxnWwCU/RM+VSzjVwJX6oVii8TPDEoDzYs9DuUhM8xMgWIialMVoHkXy/zCb
 j0bXUi2v8kBnnEm/QcbD+rPOVN/x0uhm+nccuI/1vsy1MAQSonlhKLfZuHUx5DF2nVB3
 cUQg==
X-Forwarded-Encrypted: i=1;
 AHgh+RoR/f9H9cVOAznDhCiES5aw2ByHJbRw3IBqUenYwBKu6gbkltKhs0p6I1kRWDHA8rkR75+h9JZcQ67qhWdqPV/rxgE=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxfEaXQyeFWru6sp338R7wbC6HuxhoRBFo580Dy3ufZNGBv0Ce4
 hwKcMx9Uru00emBl7g56/dE+Zp+VAZzNNqO83j1ktj4mjwKdEdHZUmIT
X-Gm-Gg: AfdE7cngoS5hR8omtld4kSPwao8tL3oUJxSS1xniwOYfKibl5BRqCzWHR+iNJCatWq9
 HVWyJo+U79i9Y0cZA76QSsAKlL5be5sRVk3Y21Yf5D42nDqpftmkfH44v5zu0GtKN1UxUIBmlGJ
 RZzH9/vTx67t6NWykoR5nFFRvbwh+Cdt0BGVwDZ1nkZDA8PHl5x50M9hQIGcgcvzq1JgbDRoKH/
 bspTdf9KDsf7iX/DYxqLR1V2Bx0eqxgokMWonWQiqCPrR7hS0/WRk7Z9VykQEjgVxsYf0O2cy1n
 ripuvPG9qncz3sue5dM/HqxrjBl2J+QNR2DIGvPPJNZGbjwALUoeWqmAOCLRu4oyDIB15FLWqWd
 3ilX/Yl1ehNZVyup0pnif9prRmFjZ5ZqZmTKezfdcdtpdRMsKWMfpnBHBUDX7EUHljxqOuF1tsi
 TPiz7+9UCH5wyBsLVAuteAz0v7c4unxQaUHa5Gkp+aPdBliQ==
X-Received: by 2002:a17:902:d585:b0:2c0:db23:4a6 with SMTP id
 d9443c01a7336-2ccea33a741mr19490865ad.1.1783512974833; 
 Wed, 08 Jul 2026 05:16:14 -0700 (PDT)
Received: from smtpclient.apple ([23.247.139.92])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2ccc9d1e284sm27267735ad.40.2026.07.08.05.16.08
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 Jul 2026 05:16:14 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81.1.8\))
From: Miao Wang <shankerwangmiao@gmail.com>
In-Reply-To: <CAMRc=MeDq6=u66hc+ChmJA9iKRhsYFhg7rKkCGh2BA=--VGkcw@mail.gmail.com>
Date: Wed, 8 Jul 2026 20:15:55 +0800
Message-Id: <C8B03257-3909-4323-B183-331F7CB1DA3E@gmail.com>
References: <20260708-ls2kbmc-mod-v2-0-2afdd1741766@gmail.com>
 <20260708-ls2kbmc-mod-v2-7-2afdd1741766@gmail.com>
 <CAMRc=MeDq6=u66hc+ChmJA9iKRhsYFhg7rKkCGh2BA=--VGkcw@mail.gmail.com>
To: Bartosz Golaszewski <brgl@kernel.org>
X-Mailer: Apple Mail (2.3826.700.81.1.8)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi > 2026年7月8日 19:36，Bartosz Golaszewski 写道：
    > > On Tue, 7 Jul 2026 23:16:31 +0200, Miao Wang via B4 Relay > said: >>
   From: Miao Wang >> >> The reset event of BMC is captured through [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [shankerwangmiao(at)gmail.com]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.214.181 listed in wl.mailspike.net]
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1whRCT-00049g-MU
X-Mailman-Approved-At: Wed, 08 Jul 2026 12:35:01 +0000
Subject: Re: [Openipmi-developer] [PATCH RFC v2 7/7] mfd: ls2kbmc: Capture
 the reset event of BMC through GPIO
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
Cc: Chong Qiao <qiaochong@loongson.cn>, Huacai Chen <chenhuacai@kernel.org>,
 Binbin Zhou <zhoubinbin@loongson.cn>, Linus Walleij <linusw@kernel.org>,
 Lee Jones <lee@kernel.org>, mfd@lists.linux.dev, linux-kernel@vger.kernel.org,
 Jiaxun Yang <jiaxun.yang@flygoat.com>, Corey Minyard <corey@minyard.net>,
 linux-gpio@vger.kernel.org, Yinbo Zhu <zhuyinbo@loongson.cn>,
 WANG Xuerui <kernel@xen0n.name>, openipmi-developer@lists.sourceforge.net,
 Miao Wang via B4 Relay <devnull+shankerwangmiao.gmail.com@kernel.org>,
 Xi Ruoyao <xry111@xry111.site>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MV_CASE(0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,gmail.com:s=20251104];
	FORGED_SENDER(0.00)[shankerwangmiao@gmail.com,openipmi-developer-bounces@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:brgl@kernel.org,m:qiaochong@loongson.cn,m:chenhuacai@kernel.org,m:zhoubinbin@loongson.cn,m:linusw@kernel.org,m:lee@kernel.org,m:mfd@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:jiaxun.yang@flygoat.com,m:corey@minyard.net,m:linux-gpio@vger.kernel.org,m:zhuyinbo@loongson.cn,m:kernel@xen0n.name,m:openipmi-developer@lists.sourceforge.net,m:devnull+shankerwangmiao.gmail.com@kernel.org,m:xry111@xry111.site,m:devnull@kernel.org,s:lists@lfdr.de];
	DKIM_MIXED(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shankerwangmiao@gmail.com,openipmi-developer-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,gmail.com:-];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer,shankerwangmiao.gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E838572657F

SGkKCj4gMjAyNuW5tDfmnIg45pelIDE5OjM277yMQmFydG9zeiBHb2xhc3pld3NraSA8YnJnbEBr
ZXJuZWwub3JnPiDlhpnpgZPvvJoKPiAKPiBPbiBUdWUsIDcgSnVsIDIwMjYgMjM6MTY6MzEgKzAy
MDAsIE1pYW8gV2FuZyB2aWEgQjQgUmVsYXkKPiA8ZGV2bnVsbCtzaGFua2Vyd2FuZ21pYW8uZ21h
aWwuY29tQGtlcm5lbC5vcmc+IHNhaWQ6Cj4+IEZyb206IE1pYW8gV2FuZyA8c2hhbmtlcndhbmdt
aWFvQGdtYWlsLmNvbT4KPj4gCj4+IFRoZSByZXNldCBldmVudCBvZiBCTUMgaXMgY2FwdHVyZWQg
dGhyb3VnaCBHUElPLiBIb3dldmVyLCB0aGlzIGRyaXZlcgo+PiBieXBhc3NlcyB0aGUgR1BJTyBm
cmFtZXdvcmsgYW5kIGRpcmVjdGx5IGFjY2Vzc2VzIHRoZSBHUElPIGNvbnRyb2xsZXIKPj4gdGhy
b3VnaCB0aGUgZml4ZWQgYWRkcmVzcy4gV2hlbiB0aGUgc2FtZSBHUElPIGNvbnRyb2xsZXIgaXMg
YWxzbwo+PiBleHBvc2VkIHRocm91Z2ggQUNQSSBhbmQgcHJvYmVkIGJ5IHRoZSBjb3JyZXNwb25k
aW5nIEdQSU8gZHJpdmVyLAo+PiB0aGVyZSB3b3VsZCBiZSBhIGNvbmZsaWN0IGJldHdlZW4gdGhl
IHR3byBkcml2ZXJzLgo+PiAKPj4gVGhpcyBwYXRjaCB3aWxsIHRyeSB0byBmaW5kIHRoZSBHUElP
IHRocm91Z2ggZGVjbGFyZWQgR1BJTyBwaW4gaW4gdGhlCj4+IF9DUlMgcmVzb3VyY2VzIG9mIHRo
ZSBBQ1BJIG5vZGUuIElmIG5vIHN1Y2ggZGVsYXJhdGlvbiBpcyBmb3VuZCwgdGhlCj4+IGRyaXZl
ciB3aWxsIGZhbGwgYmFjayB0byBzZWFyY2ggZm9yIHRoZSBjb3JyZWN0IEdQSU8gY29udHJvbGxl
ciBhbmQgcGluCj4+IGFjY29yZGluZyB0byB0aGUgZml4ZWQgYWRkcmVzcyBhbmQgcGluIG51bWJl
ci4gQSBwb3NzaWJsZSBEU0RUCj4+IGRlY2xhcmF0aW9uIGZvciB0aGUgR1BJTyBwaW4gbWlnaHQg
YmUgYXMgZm9sbG93czoKPj4gCj4+ICAgIERldmljZSAoQk1DMCkgewo+PiAgICAgICAgTmFtZSAo
X0FEUiwgLi4uKSAvLyBNYXRjaCB0aGUgUENJIGFkZHJlc3Mgb2YgdGhlIEJNQyBkZXZpY2UKPj4g
ICAgICAgIC8vIFxfU0IuR1BPMSBpcyB0aGUgQUNQSSBwYXRoIG9mIHRoZSBHUElPIGNvbnRyb2xs
ZXIKPj4gICAgICAgIE5hbWUgKF9DUlMsIFJlc291cmNlVGVtcGxhdGUgKCkgewo+PiAgICAgICAg
ICAgIEdwaW9JbnQgKEVkZ2UsIEFjdGl2ZUxvdywgRXhjbHVzaXZlLCBQdWxsTm9uZSwgMCwKPj4g
ICAgICAgICAgICAgICAgICAgICAiXFxfU0IuR1BPMSIsIDApIHsKPj4gICAgICAgICAgICAgICAg
MTQgLy8gMTQgaXMgdGhlIEdQSU8gcGluIG51bWJlcgo+PiAgICAgICAgICAgIH0KPj4gICAgfQo+
PiAKPj4gU2lnbmVkLW9mZi1ieTogTWlhbyBXYW5nIDxzaGFua2Vyd2FuZ21pYW9AZ21haWwuY29t
Pgo+PiAtLS0KPj4gZHJpdmVycy9tZmQvbHMyay1ibWMtY29yZS5jIHwgMTYyICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tCj4+IDEgZmlsZSBjaGFuZ2VkLCAxMTUg
aW5zZXJ0aW9ucygrKSwgNDcgZGVsZXRpb25zKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9tZmQvbHMyay1ibWMtY29yZS5jIGIvZHJpdmVycy9tZmQvbHMyay1ibWMtY29yZS5jCj4+IGlu
ZGV4IGY4NzIyNDEwNWIzNzIwY2NhOTdkY2VmMDg5ZGFkNjNmZTU3YmM4YzIuLjcxODdiMmRmZGRj
M2FjZmI5ZmRmM2NiM2I0Njc1Mjk5OTI4ZGQwM2EgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbWZk
L2xzMmstYm1jLWNvcmUuYwo+PiArKysgYi9kcml2ZXJzL21mZC9sczJrLWJtYy1jb3JlLmMKPj4g
QEAgLTI2LDYgKzI2LDkgQEAKPj4gI2luY2x1ZGUgPGxpbnV4L3N0b3BfbWFjaGluZS5oPgo+PiAj
aW5jbHVkZSA8bGludXgvdnRfa2Vybi5oPgo+PiAjaW5jbHVkZSA8bGludXgvY29uc29sZS5oPgo+
PiArI2luY2x1ZGUgPGxpbnV4L2dwaW8vY29uc3VtZXIuaD4KPj4gKyNpbmNsdWRlIDxsaW51eC9n
cGlvL2RyaXZlci5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L2dwaW8uaD4KPiAKPiBJJ3ZlIHN0b3Bw
ZWQgaGVyZSBiZWNhdXNlIHRoaXMgaXMgYSBsZWdhY3kgaGVhZGVyIHRoYXQgbXVzdCBub3QgYmUg
aW5jbHVkZWQKPiBhbmQgbm9uZSBvZiB0aGUgaW50ZXJmYWNlcyBpbiBpdCBtdXN0IGJlIHVzZWQs
IGFzIHBlciB0aGUgLSB2ZXJ5IGxvdWQgLSBjb21tZW50Cj4gYXQgdGhlIHRvcCBvZiB0aGF0IGZp
bGUuCgpJIGZ1bGx5IHVuZGVyc3RhbmQgdXNpbmcgdGhlIGxlZ2FjeSBpbnRlcmZhY2UgaXMgZGVw
cmVjYXRlZC4gSG93ZXZlciwgdGhlcmUKc2VlbXMgbm8gb3RoZXIgd2F5IHRvIG9idGFpbiBhIGdw
aW8gbGluZSBkZXNjcmlwdGlvbiBhZnRlciBhIGdwaW8gZGV2aWNlCmlzIGZvdW5kIHVzaW5nIGdw
aW9fZGV2aWNlX2ZpbmQoKS4gQXMgdGhlIGNvbW1lbnQgc2hvd3MgaW4gdGhlIGNvZGUgYmVsb3cs
CnRoZSBvbmx5IHBsYWNlIEkgdXNlIHRoZSBsZWdhY3kgaW50ZXJmYWNlIGlzOgoKZ2RldiA9IGdw
aW9fZGV2aWNlX2ZpbmQoLi4uKTsKZGVzYyA9IGdwaW9fZGV2aWNlX2dldF9kZXNjKGdkZXYsIExT
MktfQk1DX1JFU0VUX0dQSU8pOwoKLy8gWFhYOiBtaWdodCBiZSBiZXR0ZXIgdG8gdXNlIGdwaW9k
X3JlcXVlc3QoKQpsZWdhY3lfZ3BpbyA9IGRlc2NfdG9fZ3BpbyhkZXNjKTsKZGV2bV9ncGlvX3Jl
cXVlc3Rfb25lKC4uLiwgbGVnYWN5X2dwaW8sIC4uLik7CnJldHVybiBncGlvX3RvX2Rlc2MobGVn
YWN5X2dwaW8pOwoKSSBqdXN0IGJvcnJvd2VkIHRoZSBsZWdhY3kgZ3BpbyBpbnRlcmZhY2UgdG8g
cmVxdWVzdCB0aGUgaXJxIGRlc2NyaXB0aW9uLiBJCnRoaW5rIHRoYXQgZ3Bpb2RfcmVxdWVzdCgp
IHNob3VsZCBiZSBiZXR0ZXIgdG8gYmUgdXNlZCBoZXJlLCBidXQgaXQgaXMgbm90CmFuIGludGVy
ZmFjZSB0aGF0IGlzIGV4cG9zZWQuIEFzIGEgcmVzdWx0LCBJIHBvc3QgdGhpcyBwYXRjaCBhcyBh
IFBvQyBoZXJlCnRvIGRpc2N1c3MgYW5kIGZpbmQgYSBiZXR0ZXIgd2F5IHRvIGFjaGlldmUgdGhp
cy4KCkNoZWVycywKCk1pYW8gV2FuZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1k
ZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2Uu
bmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
