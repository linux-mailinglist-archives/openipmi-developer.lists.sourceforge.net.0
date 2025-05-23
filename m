Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B538DAC1D76
	for <lists+openipmi-developer@lfdr.de>; Fri, 23 May 2025 09:10:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sVwN0zVnSwnsIsTvdlflxvlppZYBJRcxfONoYf9iLWs=; b=KzFyTPhsM0dVd1O3MIgBXrX0lF
	WAmWy+hayMTfK8j2UgbgFq1Q1T8ILoerJZ2584JEiNrTQkKNElL3KjEvx5JNrYzl1HFeq6ystoj5m
	UN3FAVe+5A23LX0iy3ppBF7vKwrq78FIga2gcwDu+ztF+U4pj14KLLdOgEO1Gt4fbtU8=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uIMXz-0006LU-8G;
	Fri, 23 May 2025 07:10:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhoubb.aaron@gmail.com>) id 1uIMXx-0006LO-MO
 for openipmi-developer@lists.sourceforge.net;
 Fri, 23 May 2025 07:10:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=psWq3z8m85bqv4VpT7bLMSWTFKID89rBSYBA4nH9rFw=; b=f1cIe6SJ2sC+wzk/0uHF7Kn5YH
 j4flSd/j5v8F4/YrPN2xr+3ylq7f6+rt5LcF0ngwTPW9aTgMmyRd8ztKWi0ACgcV0+bvxhYqRIcf1
 41Ng0bNk50VnaduWvF1h/reQEHOvIdcnrGFC5jJqrJNT+qfPSdzjKkcyZSm7Ciz4t6Lc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=psWq3z8m85bqv4VpT7bLMSWTFKID89rBSYBA4nH9rFw=; b=lCTIwnHZT1iELnEawXpSiN8a3V
 kJ7Jqc+IhaYtXuNn/rjuk4FlqrB6P49qaodTNra3a+kT3RtKNKvlvA/qeIwImPJc2Tm8KEjZzyBVU
 4jojGTiSnI6JvEHLArMKRBUU6ktBeWi4zfICymEbbjhaGV74GDgTpDoTjcOxqui1GObE=;
Received: from mail-ed1-f43.google.com ([209.85.208.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uIMXw-0002Eg-K5 for openipmi-developer@lists.sourceforge.net;
 Fri, 23 May 2025 07:10:25 +0000
Received: by mail-ed1-f43.google.com with SMTP id
 4fb4d7f45d1cf-601dbd75b74so8752967a12.1
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 23 May 2025 00:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1747984218; x=1748589018; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=psWq3z8m85bqv4VpT7bLMSWTFKID89rBSYBA4nH9rFw=;
 b=kbdgudtj2/1PeA/jK+TN4jGIj9Znfd1yhyUVBN2xjBoYEA3ffOHOwiuJizO2sweOlk
 xSHLL+UK6lqOwgmvFwCbuylPtlhUk5ft4TXqA2JI7+Ur7VEhTuKreDMtws2B1s0QiRUb
 UeYUSBwNLKV8tnWm7fNI0Laxh9ttz8v58IM60ECqA2hUar+K9c09RTaEhpcKrPGFOv3k
 MKpLm/VcRW98CIF1U8EO9Qtd317MmYrwhIjJCh/vWE2QaSH9XZp/lYsUN+WBZzAIGsda
 L9iIBQ4cGsmBmivJhqQkEC52UHFd5fogteBmYME1+4MnS4wuL62+RQnBz9WFfshrxeDL
 v1GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747984218; x=1748589018;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=psWq3z8m85bqv4VpT7bLMSWTFKID89rBSYBA4nH9rFw=;
 b=AC+hgNECLVN6RKzQshvKYqMbPE3pvjsa0f8lur36FieUdFO/iv7TG0hehX80jb7Rn0
 JqDz679hnIcx0PM/axOUIOKKNCRwvGWWfE9m6xgs9dgktyWs17TXD7FrSmQ+/VikrcP+
 rD2Xg8ecCbELEN2F9jchC/qvCizpGxfgYr5Rtja2+SRpun1aRmvzzi7g/UK1SQ+zbYxn
 4r76cSFj4BWCcPygJbV1rvavCFt0S/bWV3ExhnvGWjTKGalL+FXhxastmKvoQPEFsukG
 ozX+8ii/sXHGxCYEBsH4PxLettqxiGNKzxjfm0i98uqnyGruCIniO2U7YnAbgQQpxwcb
 RuNQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCV6PMLBY0fJIYkCxWLJiyZwRq00h10KTTob52JlVpTsrkGuOyd43AKjhpBDSa7kgo7/Ea6FlWVJPgtl9RCGFn0nTrU=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yympa86kwRQTKn1HSOEJUtZijer1kHKIZtYkzUE5XWt59nr1O4f
 BWxMronQqBX4dNfJKAOPMvlRsBOQGzlBayg6NTAMp7Eka6+2hM/TIcAV8O3QZO0svMs2qGZRvKl
 5skjGa7u6msu2GDSihCRdqEY1JOt6FY0=
X-Gm-Gg: ASbGnctNEJfDfqDvMZ3FFW7RxZ0pJTO3e7wpF8npg/UkVGjEtm28+LW1OjBvB36Byn+
 XWprx79f4gLhwbydVhRwZYZHcDsvBkt2N8xqqt3Z8a3H/ba3a8Ke1eAHOyu3fwrLlDCiPXa2hUW
 UKQIV9h0LiRszbs5Li82RyR5LP1FZJ5nm80K4=
X-Google-Smtp-Source: AGHT+IGAUWXACG5WwPLjQk0XIMVgHZ2GR2I0S2finLg9ytbRe6xt7N0y1Qz8suntOMz2kmChuw+V3HIoS4AE+EzWjbM=
X-Received: by 2002:a17:907:3d10:b0:acb:33c6:5c71 with SMTP id
 a640c23a62f3a-ad536c1a834mr2408937866b.29.1747984217646; Fri, 23 May 2025
 00:10:17 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1747276047.git.zhoubinbin@loongson.cn>
 <778675bfe1040cd1bf4d281dc5c5f20edc4145c1.1747276047.git.zhoubinbin@loongson.cn>
 <20250522092208.GB1199143@google.com>
In-Reply-To: <20250522092208.GB1199143@google.com>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Fri, 23 May 2025 15:10:04 +0800
X-Gm-Features: AX0GCFvIEPoY7TLdSh637kUPlWeIADhqYAt7EMIVJ2WvSxjuFhKsIiRg_NoYNP0
Message-ID: <CAMpQs4+dZjEzaBOrzknL2+5B5kkz5weZ2zWKu8GwHUoQZqPJ5A@mail.gmail.com>
To: Lee Jones <lee@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Lee: Thanks for your detailed review. On Thu, May 22, 2025
    at 5:22 PM Lee Jones wrote: > > Just "core driver" in the subject line,
    rather than "MFD core driver". > > > The Loongson-2K Board Management Controller
    provides an PCIe > > i [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [zhoubb.aaron[at]gmail.com]
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                          [209.85.208.43 listed in sa-trusted.bondedsender.org]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.208.43 listed in bl.score.senderscore.com]
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: bootlin.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.208.43 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.208.43 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1uIMXw-0002Eg-K5
Subject: Re: [Openipmi-developer] [PATCH v2 1/3] mfd: ls2kbmc: Introduce
 Loongson-2K BMC MFD Core driver
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
Cc: Chong Qiao <qiaochong@loongson.cn>, Corey Minyard <minyard@acm.org>,
 Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@kernel.org>,
 linux-kernel@vger.kernel.org, loongarch@lists.linux.dev,
 Xuerui Wang <kernel@xen0n.name>, openipmi-developer@lists.sourceforge.net,
 Huacai Chen <chenhuacai@loongson.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGkgTGVlOgoKVGhhbmtzIGZvciB5b3VyIGRldGFpbGVkIHJldmlldy4KCk9uIFRodSwgTWF5IDIy
LCAyMDI1IGF0IDU6MjLigK9QTSBMZWUgSm9uZXMgPGxlZUBrZXJuZWwub3JnPiB3cm90ZToKPgo+
IEp1c3QgImNvcmUgZHJpdmVyIiBpbiB0aGUgc3ViamVjdCBsaW5lLCByYXRoZXIgdGhhbiAiTUZE
IGNvcmUgZHJpdmVyIi4KPgo+ID4gVGhlIExvb25nc29uLTJLIEJvYXJkIE1hbmFnZW1lbnQgQ29u
dHJvbGxlciBwcm92aWRlcyBhbiBQQ0llCj4gPiBpbnRlcmZhY2UgdG8gdGhlIGhvc3QgdG8gYWNj
ZXNzIHRoZSBmZWF0dXJlIGltcGxlbWVudGVkIGluIHRoZSBCTUMuCj4gPgo+ID4gVGhlIEJNQyBp
cyBhc3NlbWJsZWQgb24gYSBzZXJ2ZXIgc2ltaWxhciB0byB0aGUgc2VydmVyIG1hY2hpbmUgd2l0
aAo+ID4gTG9vbmdzb24tM0M2MDAwIENQVXMuIEl0IHN1cHBvcnRzIG11bHRpcGxlIHN1Yi1kZXZp
Y2VzIGxpa2UgRFJNLgo+ID4KPiA+IENvLWRldmVsb3BlZC1ieTogQ2hvbmcgUWlhbyA8cWlhb2No
b25nQGxvb25nc29uLmNuPgo+ID4gU2lnbmVkLW9mZi1ieTogQ2hvbmcgUWlhbyA8cWlhb2Nob25n
QGxvb25nc29uLmNuPgo+ID4gU2lnbmVkLW9mZi1ieTogQmluYmluIFpob3UgPHpob3ViaW5iaW5A
bG9vbmdzb24uY24+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL21mZC9LY29uZmlnICAgICAgIHwgIDEz
ICsrKysKPiA+ICBkcml2ZXJzL21mZC9NYWtlZmlsZSAgICAgIHwgICAyICsKPiA+ICBkcml2ZXJz
L21mZC9sczJrYm1jLW1mZC5jIHwgMTU2ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrCj4gPiAgMyBmaWxlcyBjaGFuZ2VkLCAxNzEgaW5zZXJ0aW9ucygrKQo+ID4gIGNyZWF0
ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL21mZC9sczJrYm1jLW1mZC5jCj4gPgo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbWZkL0tjb25maWcgYi9kcml2ZXJzL21mZC9LY29uZmlnCj4gPiBpbmRleCAy
MmI5MzYzMTAwMzkuLjA0ZTQwMDg1NDQxZCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvbWZkL0tj
b25maWcKPiA+ICsrKyBiL2RyaXZlcnMvbWZkL0tjb25maWcKPiA+IEBAIC0yNDIyLDUgKzI0MjIs
MTggQEAgY29uZmlnIE1GRF9VUEJPQVJEX0ZQR0EKPiA+ICAgICAgICAgVG8gY29tcGlsZSB0aGlz
IGRyaXZlciBhcyBhIG1vZHVsZSwgY2hvb3NlIE0gaGVyZTogdGhlIG1vZHVsZSB3aWxsIGJlCj4g
PiAgICAgICAgIGNhbGxlZCB1cGJvYXJkLWZwZ2EuCj4gPgo+ID4gK2NvbmZpZyBNRkRfTFMyS19C
TUMKPiA+ICsgICAgIHRyaXN0YXRlICJMb29uZ3Nvbi0ySyBCb2FyZCBNYW5hZ2VtZW50IENvbnRy
b2xsZXIgU3VwcG9ydCIKPiA+ICsgICAgIGRlcGVuZHMgb24gTE9PTkdBUkNICj4gPiArICAgICBk
ZWZhdWx0IHkgaWYgTE9PTkdBUkNICj4gPiArICAgICBzZWxlY3QgTUZEX0NPUkUKPiA+ICsgICAg
IGhlbHAKPiA+ICsgICAgICAgU2F5IHllcyBoZXJlIHRvIGFkZCBzdXBwb3J0IGZvciB0aGUgTG9v
bmdzb24tMksgQk1DCj4gPiArICAgICAgIHdoaWNoIGlzIGEgQm9hcmQgTWFuYWdlbWVudCBDb250
cm9sbGVyIGNvbm5lY3RlZCB0byB0aGUgUENJZSBidXMuCj4gPiArICAgICAgIFRoZSBkZXZpY2Ug
c3VwcG9ydHMgbXVsdGlwbGUgc3ViLWRldmljZXMgbGlrZSBEUk0uCj4gPiArICAgICAgIFRoaXMg
ZHJpdmVyIHByb3ZpZGVzIGNvbW1vbiBzdXBwb3J0IGZvciBhY2Nlc3NpbmcgdGhlIGRldmljZXM7
Cj4gPiArICAgICAgIGFkZGl0aW9uYWwgZHJpdmVycyBtdXN0IGJlIGVuYWJsZWQgaW4gb3JkZXIg
dG8gdXNlIHRoZQo+ID4gKyAgICAgICBmdW5jdGlvbmFsaXR5IG9mIHRoZSBCTUMgZGV2aWNlLgo+
Cj4gVGhpcyBwYXJhZ3JhcGggaGFzIHNvbWUgb2RkIGxpbmUgYnJlYWtzLiAgUGxlYXNlIHJlLWFs
aWduLgo+Cj4gPiAgZW5kbWVudQo+ID4gIGVuZGlmCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9t
ZmQvTWFrZWZpbGUgYi9kcml2ZXJzL21mZC9NYWtlZmlsZQo+ID4gaW5kZXggOTQ4Y2JkZjQyYTE4
Li4xODk2MGVhMTNiNjQgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL21mZC9NYWtlZmlsZQo+ID4g
KysrIGIvZHJpdmVycy9tZmQvTWFrZWZpbGUKPiA+IEBAIC0yOTAsMyArMjkwLDUgQEAgb2JqLSQo
Q09ORklHX01GRF9SU01VX0kyQykgICAgICAgICs9IHJzbXVfaTJjLm8gcnNtdV9jb3JlLm8KPiA+
ICBvYmotJChDT05GSUdfTUZEX1JTTVVfU1BJKSAgICs9IHJzbXVfc3BpLm8gcnNtdV9jb3JlLm8K
PiA+Cj4gPiAgb2JqLSQoQ09ORklHX01GRF9VUEJPQVJEX0ZQR0EpICAgICAgICs9IHVwYm9hcmQt
ZnBnYS5vCj4gPiArCj4gPiArb2JqLSQoQ09ORklHX01GRF9MUzJLX0JNQykgICArPSBsczJrYm1j
LW1mZC5vCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZmQvbHMya2JtYy1tZmQuYyBiL2RyaXZl
cnMvbWZkL2xzMmtibWMtbWZkLmMKPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCAw
MDAwMDAwMDAwMDAuLmIzMDlmNjEzMmMyNAo+ID4gLS0tIC9kZXYvbnVsbAo+ID4gKysrIGIvZHJp
dmVycy9tZmQvbHMya2JtYy1tZmQuYwo+ID4gQEAgLTAsMCArMSwxNTYgQEAKPiA+ICsvLyBTUERY
LUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5Cj4gPiArLyoKPiA+ICsgKiBMb29uZ3Nv
bi0ySyBCb2FyZCBNYW5hZ2VtZW50IENvbnRyb2xsZXIgKEJNQykgTUZEIENvcmUgRHJpdmVyLgo+
Cj4gUmVtb3ZlIHRoZSBNRkQgcGFydC4gIEl0J3Mgbm90IGEgdGhpbmcgLSB3ZSBtYWRlIGl0IHVw
Lgo+Cj4gPiArICogQ29weXJpZ2h0IChDKSAyMDI0IExvb25nc29uIFRlY2hub2xvZ3kgQ29ycG9y
YXRpb24gTGltaXRlZC4KPgo+IE5vIGNoYW5nZXMgc2luY2UgMjAyND8KPgo+ID4gKyAqCj4gPiAr
ICogT3JpZ2luYWxseSB3cml0dGVuIGJ5IENob25nIFFpYW8gPHFpYW9jaG9uZ0Bsb29uZ3Nvbi5j
bj4KPiA+ICsgKiBSZXdyaXR0ZW4gZm9yIG1haW5saW5lIGJ5IEJpbmJpbiBaaG91IDx6aG91Ymlu
YmluQGxvb25nc29uLmNuPgo+Cj4gIk1haW5saW5lIgo+Cj4gVHlwaWNhbGx5IHdlIGp1c3QgZG86
Cj4KPiBBdXRob3JzOgo+ICAgICAgICAgQXV0aG9yIE9uZSA8b25lQGNvcnAuY29tPgo+ICAgICAg
ICAgQXV0aG9yIFR3byA8dHdvQGNvcnAuY29tPgo+Cj4gPiArICovCj4gPiArCj4gPiArI2luY2x1
ZGUgPGxpbnV4L2FwZXJ0dXJlLmg+Cj4gPiArI2luY2x1ZGUgPGxpbnV4L2Vycm5vLmg+Cj4gPiAr
I2luY2x1ZGUgPGxpbnV4L2luaXQuaD4KPiA+ICsjaW5jbHVkZSA8bGludXgva2VybmVsLmg+Cj4g
PiArI2luY2x1ZGUgPGxpbnV4L21mZC9jb3JlLmg+Cj4gPiArI2luY2x1ZGUgPGxpbnV4L21vZHVs
ZS5oPgo+ID4gKyNpbmNsdWRlIDxsaW51eC9wY2kuaD4KPiA+ICsjaW5jbHVkZSA8bGludXgvcGNp
X2lkcy5oPgo+ID4gKyNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kYXRhL3NpbXBsZWZiLmg+Cj4g
PiArI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgo+ID4gKwo+ID4gKyNkZWZpbmUg
TFMyS19ESVNQTEFZX1JFU19TVEFSVCAoU1pfMTZNICsgU1pfMk0pCj4gPiArI2RlZmluZSBMUzJL
X0lQTUlfUkVTX1NJWkUgICAweDFjCj4gPiArI2RlZmluZSBMUzJLX0lQTUkwX1JFU19TVEFSVCAo
U1pfMTZNICsgMHhmMDAwMDApCj4gPiArI2RlZmluZSBMUzJLX0lQTUkxX1JFU19TVEFSVCAoTFMy
S19JUE1JMF9SRVNfU1RBUlQgKyBMUzJLX0lQTUlfUkVTX1NJWkUpCj4gPiArI2RlZmluZSBMUzJL
X0lQTUkyX1JFU19TVEFSVCAoTFMyS19JUE1JMV9SRVNfU1RBUlQgKyBMUzJLX0lQTUlfUkVTX1NJ
WkUpCj4gPiArI2RlZmluZSBMUzJLX0lQTUkzX1JFU19TVEFSVCAoTFMyS19JUE1JMl9SRVNfU1RB
UlQgKyBMUzJLX0lQTUlfUkVTX1NJWkUpCj4gPiArI2RlZmluZSBMUzJLX0lQTUk0X1JFU19TVEFS
VCAoTFMyS19JUE1JM19SRVNfU1RBUlQgKyBMUzJLX0lQTUlfUkVTX1NJWkUpCj4KPiBMaW5lIHRo
ZW0gX2FsbF8gdXAgcGxlYXNlLiAgT25lIG1vcmUgdGFiIHNob3VsZCBkbyBpdC4KPgo+ID4gK3N0
YXRpYyBzdHJ1Y3QgcmVzb3VyY2UgbHMya19kaXNwbGF5X3Jlc291cmNlc1tdID0gewo+ID4gKyAg
ICAgREVGSU5FX1JFU19NRU1fTkFNRUQoTFMyS19ESVNQTEFZX1JFU19TVEFSVCwgU1pfNE0sICJz
aW1wbGVkcm0tcmVzIiksCj4gPiArfTsKPiA+ICsKPiA+ICtzdGF0aWMgc3RydWN0IHJlc291cmNl
IGxzMmtfaXBtaTBfcmVzb3VyY2VzW10gPSB7Cj4gPiArICAgICBERUZJTkVfUkVTX01FTV9OQU1F
RChMUzJLX0lQTUkwX1JFU19TVEFSVCwgTFMyS19JUE1JX1JFU19TSVpFLCAiaXBtaTAtcmVzIiks
Cj4gPiArfTsKPiA+ICsKPiA+ICtzdGF0aWMgc3RydWN0IHJlc291cmNlIGxzMmtfaXBtaTFfcmVz
b3VyY2VzW10gPSB7Cj4gPiArICAgICBERUZJTkVfUkVTX01FTV9OQU1FRChMUzJLX0lQTUkxX1JF
U19TVEFSVCwgTFMyS19JUE1JX1JFU19TSVpFLCAiaXBtaTEtcmVzIiksCj4gPiArfTsKPiA+ICsK
PiA+ICtzdGF0aWMgc3RydWN0IHJlc291cmNlIGxzMmtfaXBtaTJfcmVzb3VyY2VzW10gPSB7Cj4g
PiArICAgICBERUZJTkVfUkVTX01FTV9OQU1FRChMUzJLX0lQTUkyX1JFU19TVEFSVCwgTFMyS19J
UE1JX1JFU19TSVpFLCAiaXBtaTItcmVzIiksCj4gPiArfTsKPiA+ICsKPiA+ICtzdGF0aWMgc3Ry
dWN0IHJlc291cmNlIGxzMmtfaXBtaTNfcmVzb3VyY2VzW10gPSB7Cj4gPiArICAgICBERUZJTkVf
UkVTX01FTV9OQU1FRChMUzJLX0lQTUkzX1JFU19TVEFSVCwgTFMyS19JUE1JX1JFU19TSVpFLCAi
aXBtaTMtcmVzIiksCj4gPiArfTsKPiA+ICsKPiA+ICtzdGF0aWMgc3RydWN0IHJlc291cmNlIGxz
MmtfaXBtaTRfcmVzb3VyY2VzW10gPSB7Cj4gPiArICAgICBERUZJTkVfUkVTX01FTV9OQU1FRChM
UzJLX0lQTUk0X1JFU19TVEFSVCwgTFMyS19JUE1JX1JFU19TSVpFLCAiaXBtaTQtcmVzIiksCj4g
PiArfTsKPiA+ICsKPiA+ICtzdGF0aWMgc3RydWN0IG1mZF9jZWxsIGxzMmtfYm1jX2NlbGxzW10g
PSB7Cj4gPiArICAgICBNRkRfQ0VMTF9SRVMoInNpbXBsZS1mcmFtZWJ1ZmZlciIsIGxzMmtfZGlz
cGxheV9yZXNvdXJjZXMpLAo+ID4gKyAgICAgTUZEX0NFTExfUkVTKCJsczJrLWlwbWktc2kiLCBs
czJrX2lwbWkwX3Jlc291cmNlcyksCj4gPiArICAgICBNRkRfQ0VMTF9SRVMoImxzMmstaXBtaS1z
aSIsIGxzMmtfaXBtaTFfcmVzb3VyY2VzKSwKPiA+ICsgICAgIE1GRF9DRUxMX1JFUygibHMyay1p
cG1pLXNpIiwgbHMya19pcG1pMl9yZXNvdXJjZXMpLAo+ID4gKyAgICAgTUZEX0NFTExfUkVTKCJs
czJrLWlwbWktc2kiLCBsczJrX2lwbWkzX3Jlc291cmNlcyksCj4gPiArICAgICBNRkRfQ0VMTF9S
RVMoImxzMmstaXBtaS1zaSIsIGxzMmtfaXBtaTRfcmVzb3VyY2VzKSwKPiA+ICt9Owo+ID4gKwo+
ID4gKy8qCj4gPiArICogQ3VycmVudGx5IHRoZSBMb29uZ3Nvbi0ySzA1MDAgQk1DIGhhcmR3YXJl
IGRvZXMgbm90IGhhdmUgYW4gaTJjIGludGVyZmFjZSB0bwo+Cj4gSTJDCj4KPiA+ICsgKiBhZGFw
dCB0byB0aGUgcmVzb2x1dGlvbi4KPgo+IFJlbW92ZSB0aGUgbGluZSBicmVhayBoZXJlLgo+Cj4g
PiArICogV2Ugc2V0IHRoZSByZXNvbHV0aW9uIGJ5IHByZXNldHRpbmcgInZpZGVvPTEyODB4MTAy
NC0xNkAyTSIgdG8gdGhlIGJtYyBtZW1vcnkuCj4KPiBCTUMKPgo+ID4gKyAqLwo+ID4gK3N0YXRp
YyBpbnQgbHMya19ibWNfZ2V0X3ZpZGVvX21vZGUoc3RydWN0IHBjaV9kZXYgKnBkZXYsIHN0cnVj
dCBzaW1wbGVmYl9wbGF0Zm9ybV9kYXRhICpwZCkKPiA+ICt7Cj4gPiArICAgICBjaGFyICptb2Rl
Owo+ID4gKyAgICAgaW50IGRlcHRoLCByZXQ7Cj4gPiArCj4gPiArICAgICAvKiBUaGUgcGNpIG1l
bSBiYXIgbGFzdCAxNk0gaXMgdXNlZCB0byBzdG9yZSB0aGUgc3RyaW5nLiAqLwo+Cj4gUENJCj4K
PiBCQVIncyAobWF5YmU/KQoKLyogVGhlIGxhc3QgMTZNIG9mIFBDSSBCQVIwIGlzIHVzZWQgdG8g
c3RvcmUgdGhlIHJlc29sdXRpb24gc3RyaW5nLiAqLwo+Cj4gPiArICAgICBtb2RlID0gZGV2bV9p
b3JlbWFwKCZwZGV2LT5kZXYsIHBjaV9yZXNvdXJjZV9zdGFydChwZGV2LCAwKSArIFNaXzE2TSwg
U1pfMTZNKTsKPiA+ICsgICAgIGlmICghbW9kZSkKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIC1F
Tk9NRU07Cj4gPiArCj4gPiArICAgICAvKiBlbnYgYXQgbGFzdCAxNk0ncyBiZWdpbm5pbmcsIGZp
cnN0IGVudiBpcyAidmlkZW89IiAqLwo+Cj4gVGhpcyBkb2Vzbid0IG1ha2Ugc2Vuc2UgdG8gbWUg
LSBwbGVhc2UgcmV3b3JkLgoKSG93IGFib3V0OgoKLyogVGhlIHJlc29sdXRpb24gZmllbGQgc3Rh
cnRzIHdpdGggdGhlIGZsYWcg4oCcdmlkZW894oCdLiAqLwo+Cj4gPiArICAgICBpZiAoIXN0cm5j
bXAobW9kZSwgInZpZGVvPSIsIDYpKQo+ID4gKyAgICAgICAgICAgICBtb2RlID0gbW9kZSArIDY7
Cj4gPiArCj4gPiArICAgICByZXQgPSBrc3RydG9pbnQoc3Ryc2VwKCZtb2RlLCAieCIpLCAxMCwg
JnBkLT53aWR0aCk7Cj4gPiArICAgICBpZiAocmV0KQo+ID4gKyAgICAgICAgICAgICByZXR1cm4g
cmV0Owo+ID4gKwo+ID4gKyAgICAgcmV0ID0ga3N0cnRvaW50KHN0cnNlcCgmbW9kZSwgIi0iKSwg
MTAsICZwZC0+aGVpZ2h0KTsKPiA+ICsgICAgIGlmIChyZXQpCj4gPiArICAgICAgICAgICAgIHJl
dHVybiByZXQ7Cj4gPiArCj4gPiArICAgICByZXQgPSBrc3RydG9pbnQoc3Ryc2VwKCZtb2RlLCAi
QCIpLCAxMCwgJmRlcHRoKTsKPiA+ICsgICAgIGlmIChyZXQpCj4gPiArICAgICAgICAgICAgIHJl
dHVybiByZXQ7Cj4gPiArCj4gPiArICAgICBwZC0+c3RyaWRlID0gcGQtPndpZHRoICogZGVwdGgg
LyA4Owo+ID4gKyAgICAgcGQtPmZvcm1hdCA9IGRlcHRoID09IDMyID8gImE4cjhnOGI4IiA6ICJy
NWc2YjUiOwo+ID4gKwo+ID4gKyAgICAgcmV0dXJuIDA7Cj4gPiArfQo+Cj4gU3VyZWx5IHRoZXJl
IGlzIGEgc3RhbmRhcmQgZm9ybWF0IC8gQVBJIGZvciB0aGlzIGFscmVhZHk/Cj4KPgpOb3csIHNp
bXBsZWZiX3BsYXRmb3JtX2RhdGEgaXMgbWFpbmx5IGRlc2NyaWJlZCBpbiBEVFMgYW5kIHBhcnNl
ZCBieSBzaW1wbGVkcm0uCkFuZCB3aGVuIGl0IGlzIHVzZWQgYXMgcGxhdGZvcm1fZGF0YSwgdGhl
cmUgZG9lc24ndCBzZWVtIHRvIGJlIGEKdW5pZmllZCBBUEkgdG8gcG9wdWxhdGUgc2ltcGxlZmJf
cGxhdGZvcm1fZGF0YS4gZS5nLiBpbgpzeXNmYl9zaW1wbGVmYlsxXSwgaXQgaXMgcGFyc2VkIHVz
aW5nIHN5c2ZiX3BhcnNlX21vZGUoKS4KClsxXTogaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20v
bGludXgvdjYuMTUtcmMxL3NvdXJjZS9kcml2ZXJzL2Zpcm13YXJlL3N5c2ZiX3NpbXBsZWZiLmMj
TDI3Cj4KPiA+ICtzdGF0aWMgaW50IGxzMmtfYm1jX3Byb2JlKHN0cnVjdCBwY2lfZGV2ICpkZXYs
IGNvbnN0IHN0cnVjdCBwY2lfZGV2aWNlX2lkICppZCkKPiA+ICt7Cj4gPiArICAgICBpbnQgcmV0
ID0gMDsKPgo+IFRoZXJlIGlzIG5vIG5lZWQgdG8gcHJlLWluaXRpYWxpc2UgdGhpcy4KPgo+ID4g
KyAgICAgcmVzb3VyY2Vfc2l6ZV90IGJhc2U7Cj4gPiArICAgICBzdHJ1Y3Qgc2ltcGxlZmJfcGxh
dGZvcm1fZGF0YSBwZDsKPgo+IFJldmVyc2UgdGhlc2UgcGxlYXNlIChyZXZlcnNlIENocmlzdG1h
cyB0cmVlIGlzIHByZWZlcnJlZCkuCj4gPiArCj4gPiArICAgICByZXQgPSBwY2lfZW5hYmxlX2Rl
dmljZShkZXYpOwo+ID4gKyAgICAgaWYgKHJldCkKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIHJl
dDsKPiA+ICsKPiA+ICsgICAgIHJldCA9IGxzMmtfYm1jX2dldF92aWRlb19tb2RlKGRldiwgJnBk
KTsKPiA+ICsgICAgIGlmIChyZXQpCj4gPiArICAgICAgICAgICAgIGdvdG8gZGlzYWJsZV9wY2k7
Cj4gPiArCj4gPiArICAgICBsczJrX2JtY19jZWxsc1swXS5wbGF0Zm9ybV9kYXRhID0gJnBkOwo+
ID4gKyAgICAgbHMya19ibWNfY2VsbHNbMF0ucGRhdGFfc2l6ZSA9IHNpemVvZihwZCk7Cj4gPiAr
ICAgICBiYXNlID0gZGV2LT5yZXNvdXJjZVswXS5zdGFydCArIExTMktfRElTUExBWV9SRVNfU1RB
UlQ7Cj4gPiArCj4gPiArICAgICAvKiBSZW1vdmUgY29uZmxpY3RpbmcgZWZpZmIgZGV2aWNlICov
Cj4gPiArICAgICByZXQgPSBhcGVydHVyZV9yZW1vdmVfY29uZmxpY3RpbmdfZGV2aWNlcyhiYXNl
LCBTWl80TSwgInNpbXBsZS1mcmFtZWJ1ZmZlciIpOwo+ID4gKyAgICAgaWYgKHJldCkgewo+ID4g
KyAgICAgICAgICAgICBkZXZfZXJyKCZkZXYtPmRldiwgIlJlbW92ZSBmaXJtd2FyZSBmcmFtZWJ1
ZmZlcnMgZmFpbGVkOiAlZFxuIiwgcmV0KTsKPgo+ICJGYWlsZWQgdG8gcmVtb3ZlZCBmaXJtd2Fy
ZSBmcmFtZWJ1ZmZlcnMiCj4KPiA+ICsgICAgICAgICAgICAgZ290byBkaXNhYmxlX3BjaTsKPiA+
ICsgICAgIH0KPiA+ICsKPiA+ICsgICAgIHJldHVybiBkZXZtX21mZF9hZGRfZGV2aWNlcygmZGV2
LT5kZXYsIFBMQVRGT1JNX0RFVklEX0FVVE8sCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgbHMya19ibWNfY2VsbHMsIEFSUkFZX1NJWkUobHMya19ibWNfY2VsbHMpLAo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZkZXYtPnJlc291cmNlWzBdLCAwLCBO
VUxMKTsKPiA+ICsKPiA+ICtkaXNhYmxlX3BjaToKPiA+ICsgICAgIHBjaV9kaXNhYmxlX2Rldmlj
ZShkZXYpOwo+ID4gKyAgICAgcmV0dXJuIHJldDsKPiA+ICt9Cj4gPiArCj4gPiArc3RhdGljIHZv
aWQgbHMya19ibWNfcmVtb3ZlKHN0cnVjdCBwY2lfZGV2ICpkZXYpCj4gPiArewo+ID4gKyAgICAg
cGNpX2Rpc2FibGVfZGV2aWNlKGRldik7Cj4gPiArfQo+ID4gKwo+ID4gK3N0YXRpYyBzdHJ1Y3Qg
cGNpX2RldmljZV9pZCBsczJrX2JtY19kZXZpY2VzW10gPSB7Cj4gPiArICAgICB7IFBDSV9ERVZJ
Q0UoUENJX1ZFTkRPUl9JRF9MT09OR1NPTiwgMHgxYTA1KSB9LAo+ID4gKyAgICAgeyB9Cj4gPiAr
fTsKPiA+ICtNT0RVTEVfREVWSUNFX1RBQkxFKHBjaSwgbHMya19ibWNfZGV2aWNlcyk7Cj4gPiAr
Cj4gPiArc3RhdGljIHN0cnVjdCBwY2lfZHJpdmVyIGxzMmtfYm1jX2RyaXZlciA9IHsKPiA+ICsg
ICAgIC5uYW1lID0gImxzMmstYm1jIiwKPiA+ICsgICAgIC5pZF90YWJsZSA9IGxzMmtfYm1jX2Rl
dmljZXMsCj4gPiArICAgICAucHJvYmUgPSBsczJrX2JtY19wcm9iZSwKPiA+ICsgICAgIC5yZW1v
dmUgPSBsczJrX2JtY19yZW1vdmUsCj4gPiArfTsKPiA+ICsKPgo+IFJlbW92ZSB0aGlzIGxpbmUu
CgpBbGwgY29tbWVudHMgYWJvdXQgY29kZSBmb3JtYXR0aW5nIHdpbGwgYmUgY2hhbmdlZCBpbiB0
aGUgbmV4dCB2ZXJzaW9uLgo+Cj4gPiArbW9kdWxlX3BjaV9kcml2ZXIobHMya19ibWNfZHJpdmVy
KTsKPiA+ICsKPiA+ICtNT0RVTEVfREVTQ1JJUFRJT04oIkxvb25nc29uLTJLIEJNQyBkcml2ZXIi
KTsKPiA+ICtNT0RVTEVfQVVUSE9SKCJMb29uZ3NvbiBUZWNobm9sb2d5IENvcnBvcmF0aW9uIExp
bWl0ZWQiKTsKPiA+ICtNT0RVTEVfTElDRU5TRSgiR1BMIik7Cj4gPiAtLQo+ID4gMi40Ny4xCj4g
Pgo+Cj4gLS0KPiBMZWUgSm9uZXMgW+adjueQvOaWr10KCi0tIApUaGFua3MuCkJpbmJpbgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRl
dmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdl
Lm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBt
aS1kZXZlbG9wZXIK
