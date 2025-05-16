Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 892DFAB98D0
	for <lists+openipmi-developer@lfdr.de>; Fri, 16 May 2025 11:30:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3WNtULvyOaeGeP+eVuaduelwrMx2L11/9kqlyru6f7w=; b=FquE+56Pif8m1P4ueXEnn5UWmU
	V3VDW2ABzQjTyzm2RxSQLCy/bDo9fUl0AV2zp+KRIJ7lDdLyZbTgEh88Q6LrcdXMiFWnd6vnaEYo4
	1/JqZuxtthn467/gGtYfFzLil1pM2m/N9ww4FBMK5Nbu4PcMoLWrgUIvQ729xAb73tTU=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uFrO7-00074R-Lp;
	Fri, 16 May 2025 09:29:55 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhoubb.aaron@gmail.com>) id 1uFrNz-00074D-ME
 for openipmi-developer@lists.sourceforge.net;
 Fri, 16 May 2025 09:29:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gHhHGMrWLIGUqDFlkOGWHGKdWIzyR3vOGQ1cH2zD7ao=; b=IukaWFUlcI6rfvSskr6q+msSUs
 REaYAZ/3L4Ao/baDFWd0cX60IC9axprXjbXT93Q8QiwWthc/8uG0tSy5PZfJ/BI4ef/Jo16iYjl/V
 pMVd+KoU95kLvnwgX85ZLYRlDfBBhql6tQ7a/bmGfeej5dxrcV7Kv82vOl/ZOZk9ZK00=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gHhHGMrWLIGUqDFlkOGWHGKdWIzyR3vOGQ1cH2zD7ao=; b=il3nhZXIgf2URBOjOn6hJWXX+w
 CkpjRwgJ5uqJ2n3+mVtrpNwI7iDVg5PhOaOjGV70CMlOmORvxKqeynetAbMg1JFTMYUfsvtZTwnPE
 jPDUP6PEekuxJPMblRtHrwDa4AoO22Ffbde1grnpGTRQDYBuWvd4FfGqJOJCkkANarGQ=;
Received: from mail-ej1-f47.google.com ([209.85.218.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uFrNu-0004RX-9d for openipmi-developer@lists.sourceforge.net;
 Fri, 16 May 2025 09:29:43 +0000
Received: by mail-ej1-f47.google.com with SMTP id
 a640c23a62f3a-ad228552355so340775866b.3
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 16 May 2025 02:29:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1747387771; x=1747992571; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gHhHGMrWLIGUqDFlkOGWHGKdWIzyR3vOGQ1cH2zD7ao=;
 b=D+ONfMKWh8akFa8PHlZXdpt+kpMXqpCo9CC8YpK2M4iCVq6FMwI/MPmCK954iesGUS
 MIElI4YzanBOgyiG6XC7yITGD7o805CfFNE1wxY5yodGZxad9V5yl2opSGNpkVSSnf9b
 P3Q5NdVICweFKB4jFgMF5e0i3Ldf8NzbobNtmj7RzC4f6DneprtqxYo6CWSmTp2bBsH/
 ko1OnWvVThhLYRWq6AuU4trmINHuZHPS05Hv2gTTWRkMEAgbskfam0I79nPa27C7UgH7
 rnPW0/XyPyww4exFCelJHKf+SNxy8ACJX5lAXen4rq67JdpTsu2P7Cu9AiH8SyXNpmbN
 +P8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747387771; x=1747992571;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=gHhHGMrWLIGUqDFlkOGWHGKdWIzyR3vOGQ1cH2zD7ao=;
 b=mPIcHqyAyJa4ChiYJx5zvMeYyvNHjf0xJ4n/feRHTU9pyVWVZA1SITPoPSIuOnWAEN
 wwF9qcmfMQDGt+uDMqORscCT7/mW4dMK0vYVK6jI/M+uYv6NsJ7Xzp57QKojBUavBS/B
 SaFLeKYhaupNTAJy1uWi9jHg6x8DRKgkGtkjHXDK4yG4h7akpn+rfPuOXLqwuDKALZdK
 B7Eh1yaBZ8JLpNicQkh2HKhVz4YAgkBpbcD0+2VRKr859k92DfUem2QO1crBPX866QPR
 s641GhuF0ncBIvTxKjdAV+1eN3sCM7frnf3cSucsZyEMaPQF5xjw3rSHCDOX7JDK/Uea
 ewpQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXbgoEaFW+bDaMUG8qyKBxP4QlDsozkWrJZGNKG8MFE/dmUXwC6uXXZJkNdkaLEgJtNSELo2rj1fKRGQC3XTBnG8wc=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzYWiIAgVnVESxMfWD2C7rxLuBr7UOU5rO9Nagv75tMU2IEX1X3
 PtqFZvHls4Ruco3DrAe+bxuO58RV9nHeHlvfvQ5WU1IdYNyt9YAoL1hkpOR1ELJMqedjAGH0Bsz
 k4RNMCzauCz0PGQUSeWK1cvqX/U7ECDY=
X-Gm-Gg: ASbGncvYVVeMJRR1twcPs7L5eMYm3UZYkJRHJM3RFLsCTepkZxGOACJ4kXkB/e6ZiMU
 mYZS3vonKbHO4csl2snpvW2CjrhZFErAaikbvQLLBbsyRe+9ejA+oR0q13hwE43+esFpG0iXDdG
 TCBPPylIBN5q0xCkfYTc1EdO7iiRIop0Tc
X-Google-Smtp-Source: AGHT+IHKCOQVIPRjqeDK2kspkKwQXzvvSPySyP8vuz7UIAF5Y7ve27DSNoRzMKYZHDV7oNqSJ1eU0buBbX0uVmglaIs=
X-Received: by 2002:a17:907:7da8:b0:ad2:4fb7:6cd7 with SMTP id
 a640c23a62f3a-ad536b5a0e6mr144436566b.2.1747387770326; Fri, 16 May 2025
 02:29:30 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1747276047.git.zhoubinbin@loongson.cn>
 <0963b8274bfe25a21f56da9fcba05830fb43408b.1747276047.git.zhoubinbin@loongson.cn>
 <aCaOAVgb8V7_-rLR@mail.minyard.net>
In-Reply-To: <aCaOAVgb8V7_-rLR@mail.minyard.net>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Fri, 16 May 2025 17:29:17 +0800
X-Gm-Features: AX0GCFveM1wfseJ1SBRSiSVMUA_R-l0h2_d8wm9QOuPSnJ5xgEOnMzOqNT15JGk
Message-ID: <CAMpQs4+c5iDfNry__xwqVDQgoji-Chqeov_jvxFZykvvqW-Mmw@mail.gmail.com>
To: corey@minyard.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Corey: Thanks so much for the detailed review. On Fri,
   May 16, 2025 at 8:59 AM Corey Minyard wrote: > > On Thu, May 15, 2025 at
    10:32:25AM +0800, Binbin Zhou wrote: > > This patch adds Loongson-2K BMC
   IPMI support. > > > > According to the exi [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.218.47 listed in list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [zhoubb.aaron[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.218.47 listed in sa-accredit.habeas.com]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.218.47 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.218.47 listed in wl.mailspike.net]
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1uFrNu-0004RX-9d
Subject: Re: [Openipmi-developer] [PATCH v2 2/3] ipmi: Add Loongson-2K BMC
 support
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
Cc: Chong Qiao <qiaochong@loongson.cn>, Lee Jones <lee@kernel.org>,
 Corey Minyard <minyard@acm.org>, Binbin Zhou <zhoubinbin@loongson.cn>,
 Huacai Chen <chenhuacai@kernel.org>, linux-kernel@vger.kernel.org,
 loongarch@lists.linux.dev, Xuerui Wang <kernel@xen0n.name>,
 openipmi-developer@lists.sourceforge.net, Huacai Chen <chenhuacai@loongson.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGkgQ29yZXk6CgpUaGFua3Mgc28gbXVjaCBmb3IgdGhlIGRldGFpbGVkIHJldmlldy4KCk9uIEZy
aSwgTWF5IDE2LCAyMDI1IGF0IDg6NTnigK9BTSBDb3JleSBNaW55YXJkIDxjb3JleUBtaW55YXJk
Lm5ldD4gd3JvdGU6Cj4KPiBPbiBUaHUsIE1heSAxNSwgMjAyNSBhdCAxMDozMjoyNUFNICswODAw
LCBCaW5iaW4gWmhvdSB3cm90ZToKPiA+IFRoaXMgcGF0Y2ggYWRkcyBMb29uZ3Nvbi0ySyBCTUMg
SVBNSSBzdXBwb3J0Lgo+ID4KPiA+IEFjY29yZGluZyB0byB0aGUgZXhpc3RpbmcgZGVzaWduLCB3
ZSB1c2Ugc29mdHdhcmUgc2ltdWxhdGlvbiB0bwo+ID4gaW1wbGVtZW50IHRoZSBLQ1MgaW50ZXJm
YWNlIHJlZ2lzdGVyczogU3RhdXRzL0NvbW1hbmQvRGF0YV9PdXQvRGF0YV9Jbi4KPgo+IFRoaXMg
aXMgYSBzdHJhbmdlIHdheSB0byBkbyB0aGlzLiAgTXkgcHJlZmVyZW5jZSB3b3VsZCBiZSB0byBo
YXZlIGEKPiBzZXBhcmF0ZSBkcml2ZXIgZm9yIHRoaXMgYW5kIG5vdCBwdXQgaXQgdW5kZXIgdGhl
IGlwbWlfc2kgZHJpdmVyLgo+IEJ1dCBpdCdzIGFubm95aW5nbHkgY2xvc2UgYW5kIGl0IHdvdWxk
IGR1cGxpY2F0ZSBhIGxvdCBvZiBpcG1pX3NpX2ludGYuYwo+IEFueXdheSwgSSB0aGluayBJJ20g
b2sgd2l0aCB0aGlzIGJhc2ljIGRlc2lnbi4gIEJ1dCB0aGVyZSBhcmUgcHJvYmxlbXMuCj4KPiA+
Cj4gPiBBbHNvIHNpbmNlIGJvdGggaG9zdCBzaWRlIGFuZCBCTUMgc2lkZSByZWFkIGFuZCB3cml0
ZSBrY3Mgc3RhdHVzLCBJIHVzZQo+ID4gZmlmbyBwb2ludGVyIHRvIGVuc3VyZSBkYXRhIGNvbnNp
c3RlbmN5Lgo+Cj4gSSBhc3N1bWUgdGhpcyBmaWZvIHBvaW50ZXIgaXMgcGFydCBvZiB0aGUgaW50
ZXJmYWNlIGhhcmR3YXJlIG9yIHRoZQo+IGltcGxlbWVudGF0aW9uIG9uIHRoZSBvdGhlciBzaWRl
IG9mIHRoZSBpbnRlcmZhY2UuCj4KPiA+Cj4gPiBUaGVyZWZvcmUgSSBtYWRlIHRoZSB3aG9sZSBJ
UE1JIGRyaXZlciBpbmRlcGVuZGVudC4KPgo+IFdoYXQgZG8geW91IG1lYW4gYnkgdGhpcyBzdGF0
ZW1lbnQ/Cj4KPiBNb3JlIGNvbW1lbnRzIGlubGluZS4KPgo+ID4KPiA+IENvLWRldmVsb3BlZC1i
eTogQ2hvbmcgUWlhbyA8cWlhb2Nob25nQGxvb25nc29uLmNuPgo+ID4gU2lnbmVkLW9mZi1ieTog
Q2hvbmcgUWlhbyA8cWlhb2Nob25nQGxvb25nc29uLmNuPgo+ID4gU2lnbmVkLW9mZi1ieTogQmlu
YmluIFpob3UgPHpob3ViaW5iaW5AbG9vbmdzb24uY24+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2No
YXIvaXBtaS9NYWtlZmlsZSAgICAgICB8ICAgMSArCj4gPiAgZHJpdmVycy9jaGFyL2lwbWkvaXBt
aV9zaS5oICAgICAgfCAgIDcgKwo+ID4gIGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfaW50Zi5j
IHwgICAzICsKPiA+ICBkcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NpX2xzMmsuYyB8IDI1MCArKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiAgNCBmaWxlcyBjaGFuZ2VkLCAyNjEgaW5z
ZXJ0aW9ucygrKQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2NoYXIvaXBtaS9pcG1p
X3NpX2xzMmsuYwo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2NoYXIvaXBtaS9NYWtlZmls
ZSBiL2RyaXZlcnMvY2hhci9pcG1pL01ha2VmaWxlCj4gPiBpbmRleCBlMDk0NDU0N2M5ZDAuLjVl
YjM0OTRmNWYzOSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvY2hhci9pcG1pL01ha2VmaWxlCj4g
PiArKysgYi9kcml2ZXJzL2NoYXIvaXBtaS9NYWtlZmlsZQo+ID4gQEAgLTgsNiArOCw3IEBAIGlw
bWlfc2kteSA6PSBpcG1pX3NpX2ludGYubyBpcG1pX2tjc19zbS5vIGlwbWlfc21pY19zbS5vIGlw
bWlfYnRfc20ubyBcCj4gPiAgICAgICBpcG1pX3NpX21lbV9pby5vCj4gPiAgaXBtaV9zaS0kKENP
TkZJR19IQVNfSU9QT1JUKSArPSBpcG1pX3NpX3BvcnRfaW8ubwo+ID4gIGlwbWlfc2ktJChDT05G
SUdfUENJKSArPSBpcG1pX3NpX3BjaS5vCj4gPiAraXBtaV9zaS0kKENPTkZJR19MT09OR0FSQ0gp
ICs9IGlwbWlfc2lfbHMyay5vCj4KPiBTaG91bGRuJ3QgdGhpcyBiZSBkZXBlbmRlbnQgb24gTUZE
X0xTMktfQk1DPyAgSXQgYXBwZWFycyB5b3UgY2FuIGRpc2FibGUKPiB0aGF0IGFuZCBzdGlsbCBo
YXZlIENPTkZJR19MT09OR0FSQ0ggZW5hYmxlZC4KCkluZGVlZCwgaXQgc2hvdWxkIHJlbHkgb24g
TUZEX0xTMktfQk1DLgo+Cj4gQW5kIHRoaXMgTUZEIGNhbiBoYXZlIG11bHRpcGxlIHRoaW5ncyBo
YW5naW5nIG9mZiBvZiBpdCwgd291bGRuJ3QgeW91Cj4gd2FudCB0byBtYWtlIHRoZSBpbmRpdmlk
dWFsIGRyaXZlcnMgdGhlaXIgb3duIENPTkZJRyBpdGVtcz8KPgo+ID4gIGlwbWlfc2ktJChDT05G
SUdfUEFSSVNDKSArPSBpcG1pX3NpX3BhcmlzYy5vCj4gPgo+ID4gIG9iai0kKENPTkZJR19JUE1J
X0hBTkRMRVIpICs9IGlwbWlfbXNnaGFuZGxlci5vCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9j
aGFyL2lwbWkvaXBtaV9zaS5oIGIvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zaS5oCj4gPiBpbmRl
eCBhN2VhZDJhNGM3NTMuLjcxZjFkNGUxMjcyYyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvY2hh
ci9pcG1pL2lwbWlfc2kuaAo+ID4gKysrIGIvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zaS5oCj4g
PiBAQCAtOTMsNiArOTMsMTMgQEAgdm9pZCBpcG1pX3NpX3BjaV9zaHV0ZG93bih2b2lkKTsKPiA+
ICBzdGF0aWMgaW5saW5lIHZvaWQgaXBtaV9zaV9wY2lfaW5pdCh2b2lkKSB7IH0KPiA+ICBzdGF0
aWMgaW5saW5lIHZvaWQgaXBtaV9zaV9wY2lfc2h1dGRvd24odm9pZCkgeyB9Cj4gPiAgI2VuZGlm
Cj4gPiArI2lmZGVmIENPTkZJR19MT09OR0FSQ0gKPiA+ICt2b2lkIGlwbWlfc2lfbHMya19pbml0
KHZvaWQpOwo+ID4gK3ZvaWQgaXBtaV9zaV9sczJrX3NodXRkb3duKHZvaWQpOwo+ID4gKyNlbHNl
Cj4gPiArc3RhdGljIGlubGluZSB2b2lkIGlwbWlfc2lfbHMya19pbml0KHZvaWQpIHsgfQo+ID4g
K3N0YXRpYyBpbmxpbmUgdm9pZCBpcG1pX3NpX2xzMmtfc2h1dGRvd24odm9pZCkgeyB9Cj4gPiAr
I2VuZGlmCj4KPiBJJ20gbm90IGV4Y2l0ZWQgYWJvdXQgdGhpcywgYnV0IHRoZXJlIGlzIGhpc3Rv
cnksIEkgZ3Vlc3MuCj4KPiBTYW1lIGNvbW1lbnQgYXMgdGhlIE1ha2VmaWxlIG9uIENPTkZJR19M
T09OR0FSQ0guCgpJdCBzaG91bGQgYmUgTUZEX0xTMktfQk1DLgo+Cj4gPiAgI2lmZGVmIENPTkZJ
R19QQVJJU0MKPiA+ICB2b2lkIGlwbWlfc2lfcGFyaXNjX2luaXQodm9pZCk7Cj4gPiAgdm9pZCBp
cG1pX3NpX3BhcmlzY19zaHV0ZG93bih2b2lkKTsKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2No
YXIvaXBtaS9pcG1pX3NpX2ludGYuYyBiL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfaW50Zi5j
Cj4gPiBpbmRleCAxMmIwYjc3ZWIxY2MuLjMyM2RhNzc2OThlYSAxMDA2NDQKPiA+IC0tLSBhL2Ry
aXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfaW50Zi5jCj4gPiArKysgYi9kcml2ZXJzL2NoYXIvaXBt
aS9pcG1pX3NpX2ludGYuYwo+ID4gQEAgLTIxMDcsNiArMjEwNyw3IEBAIHN0YXRpYyBpbnQgX19p
bml0IGluaXRfaXBtaV9zaSh2b2lkKQo+ID4KPiA+ICAgICAgIGlwbWlfc2lfcGNpX2luaXQoKTsK
PiA+Cj4gPiArICAgICBpcG1pX3NpX2xzMmtfaW5pdCgpOwo+ID4gICAgICAgaXBtaV9zaV9wYXJp
c2NfaW5pdCgpOwo+ID4KPiA+ICAgICAgIC8qIFdlIHByZWZlciBkZXZpY2VzIHdpdGggaW50ZXJy
dXB0cywgYnV0IGluIHRoZSBjYXNlIG9mIGEgbWFjaGluZQo+ID4gQEAgLTIyODgsNiArMjI4OSw4
IEBAIHN0YXRpYyB2b2lkIGNsZWFudXBfaXBtaV9zaSh2b2lkKQo+ID4KPiA+ICAgICAgIGlwbWlf
c2lfcGNpX3NodXRkb3duKCk7Cj4gPgo+ID4gKyAgICAgaXBtaV9zaV9sczJrX3NodXRkb3duKCk7
Cj4gPiArCj4gPiAgICAgICBpcG1pX3NpX3BhcmlzY19zaHV0ZG93bigpOwo+ID4KPiA+ICAgICAg
IGlwbWlfc2lfcGxhdGZvcm1fc2h1dGRvd24oKTsKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2No
YXIvaXBtaS9pcG1pX3NpX2xzMmsuYyBiL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfbHMyay5j
Cj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi5jYjMxYmI5
ODlmY2EKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlf
c2lfbHMyay5jCj4gPiBAQCAtMCwwICsxLDI1MCBAQAo+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyOiBHUEwtMi4wKwo+ID4gKy8qCj4gPiArICogRHJpdmVyIGZvciBMb29uZ3Nvbi0ySyBC
TUMgSVBNSQo+ID4gKyAqCj4gPiArICogQ29weXJpZ2h0IChDKSAyMDI0IExvb25nc29uIFRlY2hu
b2xvZ3kgQ29ycG9yYXRpb24gTGltaXRlZC4KPiA+ICsgKgo+ID4gKyAqIE9yaWdpbmFsbHkgd3Jp
dHRlbiBieSBDaG9uZyBRaWFvIDxxaWFvY2hvbmdAbG9vbmdzb24uY24+Cj4gPiArICogUmV3cml0
dGVuIGZvciBtYWlubGluZSBieSBCaW5iaW4gWmhvdSA8emhvdWJpbmJpbkBsb29uZ3Nvbi5jbj4K
PiA+ICsgKi8KPiA+ICsKPiA+ICsjaW5jbHVkZSA8bGludXgvaW9wb3J0Lmg+Cj4gPiArI2luY2x1
ZGUgPGxpbnV4L21vZHVsZS5oPgo+ID4gKyNpbmNsdWRlIDxsaW51eC90eXBlcy5oPgo+ID4gKwo+
ID4gKyNpbmNsdWRlICJpcG1pX3NpLmgiCj4gPiArCj4gPiArI2RlZmluZSBMUzJLX0tDU19TVFNf
T0JGICAgICBCSVQoMCkKPiA+ICsjZGVmaW5lIExTMktfS0NTX1NUU19JQkYgICAgIEJJVCgxKQo+
ID4gKyNkZWZpbmUgTFMyS19LQ1NfU1RTX1NNU19BVE4gQklUKDIpCj4gPiArI2RlZmluZSBMUzJL
X0tDU19TVFNfQ01EICAgICBCSVQoMykKPiA+ICsKPiA+ICsjZGVmaW5lIExTMktfS0NTX0RBVEFf
TUFTSyAgIChMUzJLX0tDU19TVFNfT0JGIHwgTFMyS19LQ1NfU1RTX0lCRiB8IExTMktfS0NTX1NU
U19DTUQpCj4gPiArCj4gPiArLyogUmVhZCBhbmQgd3JpdGUgZmlmbyBwb2ludGVycyBmb3IgZGF0
YSBjb25zaXN0ZW5jeS4gKi8KPiA+ICtzdHJ1Y3QgbHMya19maWZvX2ZsYWcgewo+ID4gKyAgICAg
dTggaWJmaDsKPiA+ICsgICAgIHU4IGliZnQ7Cj4gPiArICAgICB1OCBvYmZoOwo+ID4gKyAgICAg
dTggb2JmdDsKPiA+ICt9Owo+ID4gKwo+ID4gK3N0cnVjdCBsczJrX2tjc19yZWcgewo+ID4gKyAg
ICAgdTggc3RhdHVzOwo+ID4gKyAgICAgdTggZGF0YV9vdXQ7Cj4gPiArICAgICBzMTYgZGF0YV9p
bjsKPiA+ICsgICAgIHMxNiBjbWQ7Cj4gPiArfTsKPiA+ICsKPiA+ICtzdHJ1Y3QgbHMya19rY3Nf
ZGF0YSB7Cj4gPiArICAgICBzdHJ1Y3QgbHMya19maWZvX2ZsYWcgZmlmbzsKPiA+ICsgICAgIHN0
cnVjdCBsczJrX2tjc19yZWcgcmVnOwo+ID4gKyAgICAgdTggY21kX2RhdGE7Cj4gPiArICAgICB1
OCB2ZXJzaW9uOwo+ID4gKyAgICAgdTMyIHdyaXRlX3JlcTsKPiA+ICsgICAgIHUzMiB3cml0ZV9h
Y2s7Cj4gPiArICAgICB1MzIgcmVzZXJ2ZWRbMl07Cj4gPiArfTsKPgo+IFRoZSBhYm92ZSBhcHBl
YXJzIHRvIGJlIGEgbWVtb3J5IG92ZXJsYXkgZm9yIHJlZ2lzdGVycy4gIEJ1dCB5b3UgYXJlbid0
Cj4gdXNpbmcgcmVhZGIvd3JpdGViIGFuZCBhc3NvY2lhdGVkIGZ1bmN0aW9ucyB0byByZWFkL3dy
aXRlIGl0LiAgVGhhdCBpcwo+IG5vdCB0aGUgcmlnaHQgd2F5IHRvIGRvIHRoaW5ncy4gIFBsZWFz
ZSByZWFkCj4gRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2RldmljZS1pby5yc3QKCk9rLCBJJ2xs
IHJlZmFjdG9yIHRoaXMgcGFydCBvZiB0aGUgY29kZSB0byByZWRlZmluZSBlYWNoIHN0cnVjdCBp
dGVtCmludG8gdGhlIGFwcHJvcHJpYXRlIG1hY3JvIGFuZCBhY2Nlc3MgaXQgdmlhIHJlYWR4KCkv
d3JpdGV4KCkuCj4KPiA+ICsKPiA+ICtzdGF0aWMgdm9pZCBsczJrX3NldF9vYmYoc3RydWN0IGxz
Mmtfa2NzX2RhdGEgKmlrLCB1OCBzdHMpCj4gPiArewo+ID4gKyAgICAgaWstPnJlZy5zdGF0dXMg
PSAoaWstPnJlZy5zdGF0dXMgJiB+TFMyS19LQ1NfU1RTX09CRikgfCAoc3RzICYgQklUKDApKTsK
PiA+ICt9Cj4gPiArCj4gPiArc3RhdGljIHZvaWQgbHMya19zZXRfaWJmKHN0cnVjdCBsczJrX2tj
c19kYXRhICppaywgdTggc3RzKQo+ID4gK3sKPiA+ICsgICAgIGlrLT5yZWcuc3RhdHVzID0gKGlr
LT5yZWcuc3RhdHVzICYgfkxTMktfS0NTX1NUU19JQkYpIHwgKChzdHMgJiBCSVQoMCkpIDw8IDEp
Owo+ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMgdTggbHMya19nZXRfaWJmKHN0cnVjdCBsczJrX2tj
c19kYXRhICppaykKPiA+ICt7Cj4gPiArICAgICByZXR1cm4gKGlrLT5yZWcuc3RhdHVzID4+IDEp
ICYgQklUKDApOwo+ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMgdW5zaWduZWQgY2hhciBpbnRmX3Np
bV9pbmJfdjAoc3RydWN0IGxzMmtfa2NzX2RhdGEgKmlrLAo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgb2Zmc2V0KQo+ID4gK3sKPiA+ICsgICAgIHUz
MiBpbmIgPSAwOwo+ID4gKwo+ID4gKyAgICAgc3dpdGNoIChvZmZzZXQgJiBCSVQoMCkpIHsKPiA+
ICsgICAgIGNhc2UgMDoKPiA+ICsgICAgICAgICAgICAgaW5iID0gaWstPnJlZy5kYXRhX291dDsK
PiA+ICsgICAgICAgICAgICAgbHMya19zZXRfb2JmKGlrLCAwKTsKPiA+ICsgICAgICAgICAgICAg
YnJlYWs7Cj4gPiArICAgICBjYXNlIDE6Cj4gPiArICAgICAgICAgICAgIGluYiA9IGlrLT5yZWcu
c3RhdHVzOwo+ID4gKyAgICAgICAgICAgICBicmVhazsKPiA+ICsgICAgIH0KPiA+ICsKPiA+ICsg
ICAgIHJldHVybiBpbmI7Cj4gPiArfQo+ID4gKwo+ID4gK3N0YXRpYyB1bnNpZ25lZCBjaGFyIGlu
dGZfc2ltX2luYl92MShzdHJ1Y3QgbHMya19rY3NfZGF0YSAqaWssCj4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCBvZmZzZXQpCj4gPiArewo+ID4gKyAg
ICAgdTMyIGluYiA9IDA7Cj4gPiArICAgICBpbnQgY21kOwo+ID4gKyAgICAgYm9vbCBvYmYsIGli
ZjsKPiA+ICsKPiA+ICsgICAgIG9iZiA9IGlrLT5maWZvLm9iZmggIT0gaWstPmZpZm8ub2JmdDsK
PiA+ICsgICAgIGliZiA9IGlrLT5maWZvLmliZmggIT0gaWstPmZpZm8uaWJmdDsKPiA+ICsgICAg
IGNtZCA9IGlrLT5jbWRfZGF0YTsKPiA+ICsKPiA+ICsgICAgIHN3aXRjaCAob2Zmc2V0ICYgQklU
KDApKSB7Cj4gPiArICAgICBjYXNlIDA6Cj4gPiArICAgICAgICAgICAgIGluYiA9IGlrLT5yZWcu
ZGF0YV9vdXQ7Cj4gPiArICAgICAgICAgICAgIGlrLT5maWZvLm9iZnQgPSBpay0+Zmlmby5vYmZo
Owo+ID4gKyAgICAgICAgICAgICBicmVhazsKPiA+ICsgICAgIGNhc2UgMToKPiA+ICsgICAgICAg
ICAgICAgaW5iID0gaWstPnJlZy5zdGF0dXMgJiB+TFMyS19LQ1NfREFUQV9NQVNLOwo+ID4gKyAg
ICAgICAgICAgICBpbmIgfD0gb2JmIHwgKGliZiA8PCAxKSB8IChjbWQgPDwgMyk7Cj4gPiArICAg
ICAgICAgICAgIGJyZWFrOwo+ID4gKyAgICAgfQo+ID4gKwo+ID4gKyAgICAgcmV0dXJuIGluYjsK
PiA+ICt9Cj4gPiArCj4gPiArc3RhdGljIHVuc2lnbmVkIGNoYXIgbHMya19tZW1faW5iKGNvbnN0
IHN0cnVjdCBzaV9zbV9pbyAqaW8sCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHVuc2lnbmVkIGludCBvZmZzZXQpCj4gPiArewo+ID4gKyAgICAgc3RydWN0IGxzMmtfa2NzX2Rh
dGEgKmlrID0gaW8tPmFkZHI7Cj4gPiArICAgICBpbnQgaW5iID0gMDsKPiA+ICsKPiA+ICsgICAg
IGlmIChpay0+dmVyc2lvbiA9PSAwKQo+ID4gKyAgICAgICAgICAgICBpbmIgPSBpbnRmX3NpbV9p
bmJfdjAoaWssIG9mZnNldCk7Cj4gPiArICAgICBlbHNlIGlmIChpay0+dmVyc2lvbiA9PSAxKQo+
ID4gKyAgICAgICAgICAgICBpbmIgPSBpbnRmX3NpbV9pbmJfdjEoaWssIG9mZnNldCk7Cj4gPiAr
Cj4gPiArICAgICByZXR1cm4gaW5iOwo+ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMgdm9pZCBpbnRm
X3NpbV9vdXRiX3YwKHN0cnVjdCBsczJrX2tjc19kYXRhICppaywgdW5zaWduZWQgaW50IG9mZnNl
dCwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGNoYXIgdmFsKQo+ID4g
K3sKPiA+ICsgICAgIGlmIChsczJrX2dldF9pYmYoaWspKQo+ID4gKyAgICAgICAgICAgICByZXR1
cm47Cj4gPiArCj4gPiArICAgICBzd2l0Y2ggKG9mZnNldCAmIEJJVCgwKSkgewo+ID4gKyAgICAg
Y2FzZSAwOgo+ID4gKyAgICAgICAgICAgICBpay0+cmVnLmRhdGFfaW4gPSB2YWw7Cj4gPiArICAg
ICAgICAgICAgIGlrLT5yZWcuc3RhdHVzICY9IH5MUzJLX0tDU19TVFNfQ01EOwo+ID4gKyAgICAg
ICAgICAgICBicmVhazsKPiA+ICsKPiA+ICsgICAgIGNhc2UgMToKPiA+ICsgICAgICAgICAgICAg
aWstPnJlZy5jbWQgPSB2YWw7Cj4gPiArICAgICAgICAgICAgIGlrLT5yZWcuc3RhdHVzIHw9IExT
MktfS0NTX1NUU19DTUQ7Cj4gPiArICAgICAgICAgICAgIGJyZWFrOwo+ID4gKyAgICAgfQo+ID4g
Kwo+ID4gKyAgICAgbHMya19zZXRfaWJmKGlrLCAxKTsKPiA+ICsgICAgIGlrLT53cml0ZV9yZXEr
KzsKPiA+ICt9Cj4gPiArCj4gPiArc3RhdGljIHZvaWQgaW50Zl9zaW1fb3V0Yl92MShzdHJ1Y3Qg
bHMya19rY3NfZGF0YSAqaWssIHVuc2lnbmVkIGludCBvZmZzZXQsCj4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICB1bnNpZ25lZCBjaGFyIHZhbCkKPiA+ICt7Cj4gPiArICAgICBpZiAoaWst
PmZpZm8uaWJmaCAhPSBpay0+Zmlmby5pYmZ0KQo+ID4gKyAgICAgICAgICAgICByZXR1cm47Cj4g
PiArCj4gPiArICAgICBzd2l0Y2ggKG9mZnNldCAmIEJJVCgwKSkgewo+ID4gKyAgICAgY2FzZSAw
Ogo+ID4gKyAgICAgICAgICAgICBpay0+cmVnLmRhdGFfaW4gPSB2YWw7Cj4gPiArICAgICAgICAg
ICAgIGlrLT5jbWRfZGF0YSA9IDA7Cj4gPiArICAgICAgICAgICAgIGJyZWFrOwo+ID4gKwo+ID4g
KyAgICAgY2FzZSAxOgo+ID4gKyAgICAgICAgICAgICBpay0+cmVnLmNtZCA9IHZhbDsKPiA+ICsg
ICAgICAgICAgICAgaWstPmNtZF9kYXRhID0gMTsKPiA+ICsgICAgICAgICAgICAgYnJlYWs7Cj4g
PiArICAgICB9Cj4gPiArCj4gPiArICAgICBpay0+Zmlmby5pYmZoID0gIWlrLT5maWZvLmliZnQ7
Cj4gPiArICAgICBpay0+d3JpdGVfcmVxKys7Cj4gPiArfQo+ID4gKwo+ID4gK3N0YXRpYyB2b2lk
IGxzMmtfbWVtX291dGIoY29uc3Qgc3RydWN0IHNpX3NtX2lvICppbywgdW5zaWduZWQgaW50IG9m
ZnNldCwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGNoYXIgdmFsKQo+ID4g
K3sKPiA+ICsgICAgIHN0cnVjdCBsczJrX2tjc19kYXRhICppayA9IGlvLT5hZGRyOwo+ID4gKwo+
ID4gKyAgICAgaWYgKGlrLT52ZXJzaW9uID09IDApCj4gPiArICAgICAgICAgICAgIGludGZfc2lt
X291dGJfdjAoaWssIG9mZnNldCwgdmFsKTsKPiA+ICsgICAgIGVsc2UgaWYgKGlrLT52ZXJzaW9u
ID09IDEpCj4gPiArICAgICAgICAgICAgIGludGZfc2ltX291dGJfdjEoaWssIG9mZnNldCwgdmFs
KTsKPiA+ICt9Cj4gPiArCj4gPiArc3RhdGljIHZvaWQgbHMya19tZW1fY2xlYW51cChzdHJ1Y3Qg
c2lfc21faW8gKmlvKQo+ID4gK3sKPiA+ICsgICAgIGlmIChpby0+YWRkcikKPiA+ICsgICAgICAg
ICAgICAgaW91bm1hcChpby0+YWRkcik7Cj4gPiArfQo+ID4gKwo+ID4gK3N0YXRpYyBpbnQgaXBt
aV9sczJrX3NpbV9zZXR1cChzdHJ1Y3Qgc2lfc21faW8gKmlvKQo+ID4gK3sKPiA+ICsgICAgIGlv
LT5hZGRyID0gaW9yZW1hcChpby0+YWRkcl9kYXRhLCBpby0+cmVnc3BhY2luZyk7Cj4gPiArICAg
ICBpZiAoIWlvLT5hZGRyKQo+ID4gKyAgICAgICAgICAgICByZXR1cm4gLUVJTzsKPiA+ICsKPiA+
ICsgICAgIGlvLT5pbnB1dGIgPSBsczJrX21lbV9pbmI7Cj4gPiArICAgICBpby0+b3V0cHV0YiA9
IGxzMmtfbWVtX291dGI7Cj4gPiArICAgICBpby0+aW9fY2xlYW51cCA9IGxzMmtfbWVtX2NsZWFu
dXA7Cj4gPiArCj4gPiArICAgICByZXR1cm4gMDsKPiA+ICt9Cj4gPiArCj4gPiArc3RhdGljIGlu
dCBpcG1pX2xzMmtfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ICt7Cj4g
PiArICAgICBzdHJ1Y3Qgc2lfc21faW8gaW87Cj4gPiArCj4gPiArICAgICBkZXZfaW5mbygmcGRl
di0+ZGV2LCAicHJvYmluZyB2aWEgbHMyayBwbGF0Zm9ybSIpOwo+ID4gKyAgICAgbWVtc2V0KCZp
bywgMCwgc2l6ZW9mKGlvKSk7Cj4gPiArCj4gPiArICAgICBpby5hZGRyX3NvdXJjZSAgPSBTSV9Q
TEFURk9STTsKPiA+ICsgICAgIGlvLnNpX3R5cGUgICAgICA9IFNJX0tDUzsKPgo+IHNpX3R5cGUg
aGFzIGJlZW4gcmV3b3JrZWQgcmVjZW50bHksIHRoZSBsaW51eCBuZXh0IHRyZWUgaGFzIHRoZSBj
aGFuZ2VzLgo+IEknbGwgbmVlZCB0aGlzIG1vZGlmaWVkIHRvIHdvcmsgd2l0aCB0aGUgbGludXgg
bmV4dCBjaGFuZ2VzLgoKT0ssIEkgd2lsbCByZWJhc2UgbXkgZHJpdmVyLgo+Cj4gPiArICAgICBp
by5hZGRyX3NwYWNlICAgPSBJUE1JX01FTV9BRERSX1NQQUNFOwo+ID4gKyAgICAgaW8uaW9fc2V0
dXAgICAgID0gaXBtaV9sczJrX3NpbV9zZXR1cDsKPiA+ICsgICAgIGlvLmFkZHJfZGF0YSAgICA9
IHBkZXYtPnJlc291cmNlWzBdLnN0YXJ0Owo+ID4gKyAgICAgaW8ucmVnc3BhY2luZyAgID0gcGRl
di0+cmVzb3VyY2VbMF0uZW5kIC0gcGRldi0+cmVzb3VyY2VbMF0uc3RhcnQgKyAxOwo+ID4gKyAg
ICAgaW8ucmVnc2l6ZSAgICAgID0gREVGQVVMVF9SRUdTSVpFOwo+ID4gKyAgICAgaW8ucmVnc2hp
ZnQgICAgID0gMDsKPgo+IFRoZSBhYm92ZSBpdGVtcywgZXhjZXB0IGZvciBpb19zZXR1cCwgIGRv
bid0IGhhdmUgbXVjaCBtZWFuaW5nIGZvciB5b3VyCj4gZGV2aWNlOyB0aGVyZSdzIG5vdCBtdWNo
IG5lZWQgdG8gc2V0IHRoZW0sIGFuZCB0aGVyZSdzIG5vIG5lZWQgdG8KPiBpbml0aWFsaXplIHRo
aW5ncyB0byB6ZXJvLiAgVGhleSBhcmUgZm9yIGlwbWlfc2lfcG9ydCBhbmQgaXBtaV9zaV9tZW0u
CgpUaGUgYWRkcl9kYXRhIGFuZCByZWdzcGFjaW5nIHNlZW0gdG8gYmUgbmVlZGVkIGluCmlwbWlf
bHMya19zaW1fc2V0dXAoKSwgaW4gYW55IGNhc2UsIEknbGwgcmVvcmdhbml6ZSBpdCBiYXNlZCBv
biB0aGUKbGF0ZXN0IGNvZGUuCj4KPiA+ICsgICAgIGlvLmRldiAgICAgICAgICA9ICZwZGV2LT5k
ZXY7Cj4gPiArICAgICBpby5pcnEgICAgICAgICAgPSAwOwo+ID4gKyAgICAgaWYgKGlvLmlycSkK
PiA+ICsgICAgICAgICAgICAgaW8uaXJxX3NldHVwID0gaXBtaV9zdGRfaXJxX3NldHVwOwo+Cj4g
SnVzdCByZW1vdmUgdGhlIGlycSB0aGluZywgZG9uJ3Qgc2V0IGl0IHRvIHplcm8gYW5kIHRoZW4g
Y2hlY2sgaXQuCgpPSy4uCj4KPiA+ICsKPiA+ICsgICAgIGRldl9pbmZvKCZwZGV2LT5kZXYsICIl
cFIgcmVnc2l6ZSAlZCBzcGFjaW5nICVkIGlycSAlZFxuIiwKPiA+ICsgICAgICAgICAgICAgICZw
ZGV2LT5yZXNvdXJjZVswXSwgaW8ucmVnc2l6ZSwgaW8ucmVnc3BhY2luZywgaW8uaXJxKTsKPiA+
ICsKPiA+ICsgICAgIHJldHVybiBpcG1pX3NpX2FkZF9zbWkoJmlvKTsKPiA+ICt9Cj4gPiArCj4g
PiArc3RhdGljIHZvaWQgaXBtaV9sczJrX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpw
ZGV2KQo+ID4gK3sKPiA+ICsgICAgIGlwbWlfc2lfcmVtb3ZlX2J5X2RldigmcGRldi0+ZGV2KTsK
PiA+ICt9Cj4gPiArCj4gPiArc3RydWN0IHBsYXRmb3JtX2RyaXZlciBpcG1pX2xzMmtfcGxhdGZv
cm1fZHJpdmVyID0gewo+ID4gKyAgICAgLmRyaXZlciA9IHsKPiA+ICsgICAgICAgICAgICAgLm5h
bWUgPSAibHMyay1pcG1pLXNpIiwKPiA+ICsgICAgIH0sCj4gPiArICAgICAucHJvYmUgID0gaXBt
aV9sczJrX3Byb2JlLAo+ID4gKyAgICAgLnJlbW92ZSA9IGlwbWlfbHMya19yZW1vdmUsCj4gPiAr
fTsKPiA+ICsKPiA+ICtzdGF0aWMgYm9vbCBwbGF0Zm9ybV9yZWdpc3RlcmVkOwo+ID4gK3ZvaWQg
aXBtaV9zaV9sczJrX2luaXQodm9pZCkKPiA+ICt7Cj4gPiArICAgICBpbnQgcnY7Cj4gPiArCj4g
PiArICAgICBydiA9IHBsYXRmb3JtX2RyaXZlcl9yZWdpc3RlcigmaXBtaV9sczJrX3BsYXRmb3Jt
X2RyaXZlcik7Cj4gPiArICAgICBpZiAocnYpCj4gPiArICAgICAgICAgICAgIHByX2VycigiVW5h
YmxlIHRvIHJlZ2lzdGVyIGRyaXZlcjogJWRcbiIsIHJ2KTsKPgo+IFRoYXQncyBmYXIgdG8gdmFn
dWUgdG8gYmUgdXNlZnVsLgoKT0ssIGxldCdzIGp1c3QgZHJvcCBpdC4KPgo+ID4gKyAgICAgZWxz
ZQo+ID4gKyAgICAgICAgICAgICBwbGF0Zm9ybV9yZWdpc3RlcmVkID0gdHJ1ZTsKPiA+ICt9Cj4g
PiArCj4gPiArdm9pZCBpcG1pX3NpX2xzMmtfc2h1dGRvd24odm9pZCkKPiA+ICt7Cj4gPiArICAg
ICBpZiAocGxhdGZvcm1fcmVnaXN0ZXJlZCkKPiA+ICsgICAgICAgICAgICAgcGxhdGZvcm1fZHJp
dmVyX3VucmVnaXN0ZXIoJmlwbWlfbHMya19wbGF0Zm9ybV9kcml2ZXIpOwo+ID4gK30KPiA+IC0t
Cj4gPiAyLjQ3LjEKPiA+CgotLQpUaGFua3MuCkJpbmJpbgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxp
c3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3Rz
LnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
