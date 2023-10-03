Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CD17B6049
	for <lists+openipmi-developer@lfdr.de>; Tue,  3 Oct 2023 07:14:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qnXjV-0003bl-SR;
	Tue, 03 Oct 2023 05:14:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1qnXjT-0003be-Lb
 for openipmi-developer@lists.sourceforge.net;
 Tue, 03 Oct 2023 05:14:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ci0KdVDvVGrGQIE+RHu2Fs3xC9OBTqbm+ORPGuL/NTo=; b=eNecaeP3LjI4D0Y/nTuC9v+wCq
 2RhAI2PBLr8LQaSM/9h0tCCFea96S8OaW3byMYq3PzbHstXMT4fwtB3DvsvR2aCpHc9voOPvf6atJ
 QbdW0FZX3grUnlQU6kgxty2MJ8eI9kwcbSxaroQ2g+n83ZQtzY/EQJ7L0lZIVunB3MZc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ci0KdVDvVGrGQIE+RHu2Fs3xC9OBTqbm+ORPGuL/NTo=; b=SIVFo2aa5u2cQKJypvkoxk2rkF
 AoNw7wzLtNV5eA+ZxHsMYvEid1jWu3/95jI2skRkQlni41cKUaw1GGZUfL24AM4J/RrtxFZ/GVuf5
 rj/IjGXIgSDrrTVGaiXM7DqffCKDQxUNwOrLQ0gTmZQnrpMZxJd09nPX/C/m5BsbhoaM=;
Received: from mail-oi1-f169.google.com ([209.85.167.169])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qnXjT-00GyP2-GW for openipmi-developer@lists.sourceforge.net;
 Tue, 03 Oct 2023 05:14:08 +0000
Received: by mail-oi1-f169.google.com with SMTP id
 5614622812f47-3af8b498d30so323935b6e.0
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 02 Oct 2023 22:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696310042; x=1696914842; darn=lists.sourceforge.net;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:from:to:cc:subject:date:message-id:reply-to;
 bh=Ci0KdVDvVGrGQIE+RHu2Fs3xC9OBTqbm+ORPGuL/NTo=;
 b=fDxaAyZGkQlNW3cZwiWnyE+Fd7YtgN3HPXU/fCa3A7RDVLD9IKJTtAluZeA4T9ebud
 UnMpDZMFKY3LTg0uwGJfQVQtqmVahAXpsKH8YUup0eAj6OJc6bjN+iJcSl60wUoVYa6z
 Og1QKensA7BKG9gZqz1e93O5gRi3mpmcRFtTr3FUAvj8WUqtB97rw853wRp/JJIDsBx5
 jSOarVKqyBfXGTHhPUWAyLf82zLv8u4SQO4DTwBW10VfbcqgLI4OINgx7g2e4GAIYxtq
 QOqUzHcvv7cuncRNlm4poORi1Nr8LLV4Ip8odyLNP0CMn4PHdB6KsFG24ykvlH8BwwGv
 h/+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696310042; x=1696914842;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Ci0KdVDvVGrGQIE+RHu2Fs3xC9OBTqbm+ORPGuL/NTo=;
 b=onN9zoJgIIi81e/NGXCD2qEaZMlqro0bm9X+yEAuvTwH0ISyXdi0LKkO9awjOCL/xk
 /3504Qn5NhSxKf4KmrSHytdCvfntUr9MyVR6GgSZhkYzoU7AJf1aJxagSoTaQRUpoVFk
 l5m/BuRl07fb7ALIc+3uZcR/ddiGfgZnjjLYrBqKyaoTNVGSteiDxxR6BuWq6f9j8nQF
 j6UX5MssriGRALa7HKnHeGs87sm/sHQayEP++PCujaEiVoz0pyzDjFZpoB3aCnVsW2Xt
 bQOms35aPaqa3VnrhUpQc77gzl6aZ5scV+TuM3FHtVFm7Z7D6GIrc8zCbwWbF3BXuLo3
 YMvA==
X-Gm-Message-State: AOJu0Yw5iiU9jyXFU0jGrJKlHu00AanHxXLATHv81q3yFKB50EUCgYeZ
 MvpTXapTiVYpQK0gBhxpof3hSgd3KQ==
X-Google-Smtp-Source: AGHT+IE8VsXkNdm1DtCTEz8EiH3Bs+MvjbcGWfJCpNzPlcvZobAhT9FBvjEjRbhiiwwiC6a9xJxeBw==
X-Received: by 2002:aca:2b01:0:b0:3a4:31c6:7650 with SMTP id
 i1-20020aca2b01000000b003a431c67650mr11859307oik.26.1696310041552; 
 Mon, 02 Oct 2023 22:14:01 -0700 (PDT)
Received: from serve.minyard.net ([47.189.89.62])
 by smtp.gmail.com with ESMTPSA id
 n14-20020a05680803ae00b003ae4d2baa5csm71949oie.50.2023.10.02.22.14.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Oct 2023 22:14:01 -0700 (PDT)
Received: from mail.minyard.net (unknown [IPv6:2001:470:b8f6:1d::35])
 by serve.minyard.net (Postfix) with ESMTPSA id D4DDD1800BE;
 Tue,  3 Oct 2023 05:13:59 +0000 (UTC)
Date: Tue, 3 Oct 2023 00:13:57 -0500
From: Corey Minyard <minyard@acm.org>
To: Christian Theune <ct@flyingcircus.io>
Message-ID: <ZRujFdwLxQVVfQj7@mail.minyard.net>
References: <67d8a49d-6c6e-4543-b76e-bdf977e2f357@email.android.com>
 <E251E387-91D1-4417-AB11-38B7DE59584F@flyingcircus.io>
 <ZRrc7Eet4EKbSro6@mail.minyard.net>
 <884F85AA-E8F8-4113-A89B-DF759D2FF921@flyingcircus.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <884F85AA-E8F8-4113-A89B-DF759D2FF921@flyingcircus.io>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Oct 03, 2023 at 06:47:49AM +0200, Christian Theune
 wrote: > Hey, > > > On 2. Oct 2023, at 17:08, Corey Minyard <minyard@acm.org>
 wrote: > > > > On Mon, Oct 02, 2023 at 08:05:09AM +0200, Christ [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.169 listed in list.dnswl.org]
 -0.6 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.169 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1qnXjT-00GyP2-GW
Subject: Re: [Openipmi-developer] SOL via syslog?
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
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVHVlLCBPY3QgMDMsIDIwMjMgYXQgMDY6NDc6NDlBTSArMDIwMCwgQ2hyaXN0aWFuIFRoZXVu
ZSB3cm90ZToKPiBIZXksCj4gCj4gPiBPbiAyLiBPY3QgMjAyMywgYXQgMTc6MDgsIENvcmV5IE1p
bnlhcmQgPG1pbnlhcmRAYWNtLm9yZz4gd3JvdGU6Cj4gPiAKPiA+IE9uIE1vbiwgT2N0IDAyLCAy
MDIzIGF0IDA4OjA1OjA5QU0gKzAyMDAsIENocmlzdGlhbiBUaGV1bmUgd3JvdGU6Cj4gPiAKPiA+
IC4uLnNuaXAuLi4KPiA+IAo+ID4+Pj4gQ2FuIHlvdSBub3QgZ2V0IGtlcm5lbCBjb3JlZHVtcHM/
Cj4gPj4+IFVuZm9ydHVuYXRlbHkgbm8gYW5kIEkgc3RpbGwgaGF2ZSBhYnNvbHV0ZWx5IG5vdyBp
ZGVhIHdoeSB0aGUgd2F0Y2hkb2cgdHJpZ2dlcnPigKYgSSBoYXZlIGN1cnJlbnRseSBhdHRhY2hl
ZCBkb3plbnMgb2Ygc2VydmVycyB0aGF0IGFyZSBwYXJ0IG9mIGEgbXlzdGVyaW91cyBzZXJpZXMg
b2YgY3Jhc2hlcyBidXQgdGhleSBkaWRu4oCZdCBjcmFzaCBhZnRlciBJIGF0dGFjaGVkIHRoZSBT
T0wgY29udGludW91c2x5LiBKdXN0IG15IGtpbmQgb2YgbHVjayBJIGd1ZXNzIOKApiA7KQo+ID4+
PiAKPiA+Pj4gSXQgbWlnaHQgYmUgYSBjbHVlLiAgQ2FuIHlvdSBtYWtlIHN1cmUgZmxvdy1jb250
cm9sIGlzIHR1cm5lZCBvZmYgb24gdGhlIFNPTCBjb25uZWN0aW9uIGFuZCBjb25zb2xlPyAgSWYg
eW91IGhhdmUgInIiIG9uIHRoZSBjb25zb2xlPSBjb21tYW5kIChsaWtlIGNvbnNvbGU9MTE1MjAw
bjgxcikgLCBpZiB0aGUgQk1DIHN0b3BzIHRha2luZyBjaGFyYWN0ZXJzIHlvdSBjYW4gaGFuZyB0
aGUga2VybmVsLgo+ID4+PiAKPiA+Pj4gWW91IG1pZ2h0IHdhbnQgdG8gbWFrZSBzdXJlIGdldHR5
IGhhcyBSVFMgdHVybmVkIG9mZiwgdG9vLgo+ID4+PiAKPiA+Pj4gVGhlIHRyb3VibGUgaXMsIG9m
IGNvdXJzZSwgdGhhdCB5b3UgY2FuIGxvc2UgY2hhcmFjdGVycyBiZWNhdXNlIG9mIGEgc2xvdyBC
TUMuICBCdXQgaXQncyBnZW5lcmFsbHkgYSBiYWQgaWRlYSB0byBydW4gYSBjb25zb2xlIHdpdGgg
ZmxvdyBjb250cm9sIGVuYWJsZWQuCj4gPj4gCj4gPj4gU29ycnksIHRoYXQgbWlnaHQgaGF2ZSBi
ZWVuIGEgbWlzdW5kZXJzdGFuZGluZzogSeKAmW0gbm90IGNhdGNoaW5nIHRoZSBjcmFzaGVzIGN1
cnJlbnRseSBiZWNhdXNlIGFsbCB0aGUgbWFjaGluZXMgdGhhdCB1c2VkIHRvIGNyYXNoIG5vdyBz
ZWVtIHRvIG5vdCB3YW50IHRvIGNyYXNoIGFueW1vcmUuIEkgZ3Vlc3Mgd2XigJlyZSBvbiBhIEhl
aXNlbmJ1ZyBoZXJlLiBHZXR0aW5nIG91dHB1dCBmcm9tIHRoZSBTT0wgd29ya3MgYWJzb2x1dGVs
eSBmaW5lLCBzbyBJIGV4cGVjdCB0byBzZWUgYSBrZXJuZWwgY3Jhc2ggaW4gdGhlIFNPTCBvbmNl
IGl0IGhhcHBlbnMuCj4gPj4gCj4gPj4gSeKAmW0gc29tZXdoYXQgc3VzcGVjdGluZyB0aGF0IHdl
4oCZbGwgZmluZCBhbm90aGVyIGJ1ZyB0aGF0IGNhdXNlcyB0aG9zZSBzcGVjaWZpYyBjcmFzaGVz
IG5vdCBhcHBlYXIgaW4gdGhlIFNFTCwgdGhvdWdoIOKApiAKPiA+PiAKPiA+PiBBbmQgdGhlbiBh
Z2FpbjogbWF5YmUgaXTigJlzIG5vdCBhIEhlaXNlbmJ1ZywgYnV0IG1heWJlIHdoYXRldmVyIGNh
dXNlZCB0aGUgY3Jhc2hlcyBoYXMgYmVlbiBmaXhlZCBpbiBiZXR3ZWVuIGFuZCBJ4oCZbGwgbmV2
ZXIga25vdyDigKYgOykKPiA+PiAKPiA+IAo+ID4gSSB1bmRlcnN0b29kLiAgSSdtIHNheWluZyB0
aGF0IG1heWJlIHRoZSBtYWNoaW5lcyBhcmVuJ3QgY3Jhc2hpbmcgYW55Cj4gPiBtb3JlICpiZWNh
dXNlKiB5b3UgYXJlIG1vbml0b3JpbmcgdGhlbSB3aXRoIFNPTC4KPiAKPiBPb29vb29vaC4gSeKA
mW0gZ2xhZCB3ZSB0b29rIHRoaXMgZGV0b3VyIC0gSSBrbmV3IHNvbWV0aGluZyB3YXMgb2ZmLCBi
dXQgSSB3YXMgdGhlIG9uZSBtaXN1bmRlcnN0YW5kaW5nLiBUaGFua3MgZm9yIHRha2luZyB0aGUg
dGltZSB0byBleHBsYWluIGl0IGFnYWluISBJIHdhcyBhIGJpdCBzdHVjayBvbiB0aGUg4oCcd2Vs
bCBpdOKAmXMgYSBIZWlzZW5idWcgdGhlbuKAnSBidXQgZGlkbuKAmXQgZ2V0IHRoYXQgaXQgd2Fz
IGxpdGVyYWxseSBzb+KApiAKPiAKPiA+IFBlcmhhcHMgYSBsb3Qgb2Yga2VybmVsIG91dHB1dCBj
b21lcyBvdXQgYWxsIGF0IG9uY2UsIGl0IGdldHMgZmxvdwo+ID4gY29udHJvbGxlZCBieSB0aGUg
Qk1DLCB0aGUga2VybmVsIGhhbmdzIHdhaXRpbmcgZm9yIHByaW50ayBvdXRwdXQsIGFuZAo+ID4g
dGhlIHdhdGNoZG9nIHRoZW4gZ29lcyBvZmYuICBOZXdlciBrZXJuZWxzIGhhdmUgZml4ZXMgdG8g
YXZvaWQgdGhpcwo+ID4gcHJvYmxlbSwgYnV0IG9sZGVyIG9uZXMgZG9uJ3QuCj4gPiAKPiA+IFRo
ZXJlIHdvdWxkIGJlIG5vIE9TIGNyYXNoLCBubyBTRUwgb3V0cHV0LCBubyBjb3JlZHVtcCwganVz
dCBhIHdhdGNoZG9nCj4gPiByZWJvb3QuCj4gIAo+IFVuZGVyc3Rvb2QuIFdoYXQgd291bGQgYmUg
YSBuZXdlciBrZXJuZWw/IFdl4oCZcmUgcnVubmluZyA1LjEwKC4xOTArKSBhdCB0aGUgbW9tZW50
Lgo+IAo+IFRoZSBpbnRlcmVzdGluZyBwYXJ0IGhlcmUgaXMgdGhhdCB3ZSBoYXZlIGJlZW4gbG9n
Z2luZyB0byB0aGUgc2VyaWFsIGNvbnNvbGUgd2l0aG91dCBhbnl0aGluZyBhdHRhY2hlZCBub3Jt
YWxseQo+IGZvciBhIGxvbmcgbG9uZyB0aW1lICh0aGluazogMTAgeWVhcnMgcGx1cykgc28gdGhl
cmUgaXMgc3RpbGwgYSBiaXQgb2YgZG91YnQgYXMgdGhpcyBzdGFydGVkIHRvIGNyZWVwIHVwIG9u
bHkgcmVjZW50bHkuCgpZZWFoLCBJIHVuZGVyc3RhbmQgaG93IHRoaXMgd291bGQgYmUgYSBzdHJh
bmdlIHNjZW5hcmlvLiAgSSBoYXZlIHNlZW4KdGhpcyBoYXBwZW4gaW4gdGhlIHJlYWwgd29ybGQs
IHNvIGl0IGlzIHNvbWV0aGluZyB0aGF0J3MgcG9zc2libGUsIGJ1dCBJCnRoaW5rIHRoZSBwcmlu
dGsgY2hhbmdlcyB3ZW50IGluIGJlZm9yZSA1LjEwLgoKTWF5YmUgYSBmaXJtd2FyZSB1cGRhdGUg
dG8gdGhlIEJNQz8gIEkgdGhpbmsgeW91IHdvdWxkIGhhdmUgbWVudGlvbmVkCnRoYXQsIHRob3Vn
aC4KCkFueXdheSwgdGhlIG9ubHkgd2F5IHRvIGtub3cgZm9yIHN1cmUgd291bGQgYmUgdG8gdHVy
biBvZmYgdGhlIFNPTAptb25pdG9yaW5nIGFuZCBzZWUgaWYgaXQgcmUtb2NjdXJzLiAgSSBjYW4g
dW5kZXJzdGFuZCB3aHkgeW91IHdvdWxkbid0CndhbnQgdG8gZG8gdGhhdCA6KS4KCi1jb3JleQoK
PiAKPiA+IElmIHlvdSB0dXJuIG9mZiB0aGUgU09MIG1vbml0b3JpbmcgYW5kIHRoZSBwcm9ibGVt
IGNvbWVzIGJhY2ssIHRoYXQKPiA+IHdvdWxkIGJlIGEgcHJldHR5IGdvb2QgaW5kaWNhdGlvbiB0
aGF0IHNvbWV0aGluZyBsaWtlIHRoYXQgaXMgaGFwcGVuaW5nLgo+ID4gVW5mb3J0dW5hdGVseSwg
aXQncyBoYXJkIHRvIGRlYnVnIGJlY2F1c2UgeW91IGNhbid0IGdldCBpbmZvIGZyb20geW91cgo+
ID4gcHJpbWFyeSBkZWJ1Z2dpbmcgaW50ZXJmYWNlLgo+IAo+IFllYWguIFRoYXTigJlzIHNvbWV0
aGluZyBJ4oCZbGwgZGlzY3VzcyB3aXRoIG15IHRlYW0uIEkgb3JpZ2luYWxseSBpbnRlbmRlZCB0
byB0dXJuIG9mZiB0aGUgY29udGludW91cyBTT0wgbW9uaXRvcmluZyBidXQgYWZ0ZXIgdGhpcyBn
b29zZSBjaGFzZSBJ4oCZbSBzb21ld2hhdCB3aWxsaW5nIHRvIG1ha2UgaXQgYSByZWd1bGFyIHRo
aW5nLgo+IAo+ID4gT2YgY291cnNlLCB0aGUgYnVnIG1heSBoYXZlIGJlZW4gZml4ZWQgYnkgYSBr
ZXJuZWwgb3IgYXBwIHVwZ3JhZGUsIHRvby4KPiA+IExpa2UgeW91IHNheSB3aXRoIHRoaW5ncyBs
aWtlIHRoaXMsIHlvdSBtYXkgbmV2ZXIga25vdyA6KS4KPiAKPiBLZXJuZWwgd291bGQgYmUgdGhl
IG1vc3Qgb2J2aW91cyBjaG9pY2UgZm9yIHVzIGFzIHRoZSBhZmZlY3RlZCBob3N0cyBhcmUgcmVh
bGx5IG9ubHkgUWVtdS9LVk0gc2VydmVycyB0aGF0IGRpZG7igJl0IHNlZSBhbnkgcmVsZXZhbnQg
dXBkYXRlcyBpbiB0aGUgdXNlcmxhbmQgaW4gdGhlIHBhc3QgbW9udGhzLgo+IAo+IFRoYW5rcyBh
Z2FpbiwKPiBDaHJpc3RpYW4KPiAKPiAtLSAKPiBDaHJpc3RpYW4gVGhldW5lIMK3IGN0QGZseWlu
Z2NpcmN1cy5pbyDCtyArNDkgMzQ1IDIxOTQwMSAwCj4gRmx5aW5nIENpcmN1cyBJbnRlcm5ldCBP
cGVyYXRpb25zIEdtYkggwrcgaHR0cHM6Ly9mbHlpbmdjaXJjdXMuaW8KPiBMZWlwemlnZXIgU3Ry
LiA3MC83MSDCtyAwNjEwOCBIYWxsZSAoU2FhbGUpIMK3IERldXRzY2hsYW5kCj4gSFIgU3RlbmRh
bCBIUkIgMjExNjkgwrcgR2VzY2jDpGZ0c2bDvGhyZXI6IENocmlzdGlhbiBUaGV1bmUsIENocmlz
dGlhbiBaYWdyb2RuaWNrCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZl
bG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0
L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
