Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E19C9AD99EC
	for <lists+openipmi-developer@lfdr.de>; Sat, 14 Jun 2025 05:20:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bxN0O6YPkmzpSsk6lZwl7uOt3L9CEpvAkdEd8mMiSIA=; b=enPVP6QA4FwrBTRzUL+/qFamSs
	vrFQx2tgs/XmM/2f5akvPn7L87xX6WvTR27/cm9kP6lObsbKR5uEP2FGF5zd5iIP2jk1t1woM0YeN
	nKKj3lrDJwsHZlEd2PNlbQomkgkAJaAaE6ziGpzygDfwaUfGfGNW6qZjsla+1LfGcgUY=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uQHRh-0003X4-6Y;
	Sat, 14 Jun 2025 03:20:41 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1uQHRZ-0003Wq-19
 for openipmi-developer@lists.sourceforge.net;
 Sat, 14 Jun 2025 03:20:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0nrY70xBFHGJS9UHfvsdjKO7bxO6w1GEV8th9m+GedU=; b=RIH2cSYNjRy/NyuEaPNYo2aovt
 JR3oh6xPU3RSfkhdCmgSQWxtTvBGaYPldB9v0dQq1b3/hFa4fxm0+94b6duAN+DDZN6o5TUzkXQos
 mGxAT9J8LUNXmUwpQ/pNieLU5cJ73ZZQOO7+tKej94mrqYBi5yQK9E+YWbs8aepqan5Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0nrY70xBFHGJS9UHfvsdjKO7bxO6w1GEV8th9m+GedU=; b=HWFlGiWB5NvbUzeVZ3eOjarHas
 gUMcvFRXO7igvpp/AJMB3H0A9cAnT/XOktVHY65dlUGfB1zLmS67UoKVfPM/lpLmTLzs83GnbM2xp
 KiYCHEKTTa4+gIHSd2jaGvzAZNP8NEpJNu8klRNZ5ru2Z65fKEK/banI3/fq2JzVhs5E=;
Received: from mail-ot1-f47.google.com ([209.85.210.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uQHRV-0007Qf-SY for openipmi-developer@lists.sourceforge.net;
 Sat, 14 Jun 2025 03:20:30 +0000
Received: by mail-ot1-f47.google.com with SMTP id
 46e09a7af769-72c173211feso880311a34.1
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 13 Jun 2025 20:20:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1749871219; x=1750476019;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=0nrY70xBFHGJS9UHfvsdjKO7bxO6w1GEV8th9m+GedU=;
 b=diA67ayB8v1lp8e1kdoHWLyCSAc3uv/3ZCc8WrJqU2tITo6kA1BUYAdG8WjcZFb2vc
 GHS/KfNv2L7koB26/gk0G9OwIqsOUyX2POGphMppoaM/fVWoJFA2QvshQXodd13nAg0h
 LcY/zA6zGMXyVCBgRGoR0Ce7TGgTSUv6NVvj9F5DWlpE1qnGcR2iPnTYm+vHhYZDmyaS
 H6mQ/aK5mYNJ79o21Mx6sQuQU35maee+1eMYuQ7IB5k5fXDovAh+tyoM37597KE8VjgP
 R1s6vaItIMf0i1wZ6lQiaAUl45OefI51PIyHdkz75LLwzUTorWmq4OH3h8O64ZTq2lvA
 tEIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749871219; x=1750476019;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=0nrY70xBFHGJS9UHfvsdjKO7bxO6w1GEV8th9m+GedU=;
 b=U1PwTTaeTieOYIoySgIF1BKuN+PSW+6DsY65cjxCDAt6nAcSAzuxcLrtQCa5yXgbEr
 aqbdYL9Uw9VbMQYTUsPf/pIMKME7rc9tkPniQxsiTrGdUOdmdlVoWfOgGNOhSjacW2tQ
 t7Bi4QR2ixllE6QoqIoNpLJQZCfJh5hMyLKR1sOh+8sN0ji4f5LtBCo6WTAP1+K2Ik3I
 CBqUFKFKdlf0hhaGH1g1qKpcx+rnEJs/fD67P8NrFwJtEOLsXfas0X4uLf7SxmIKc+n9
 LWYkIgiPDKkC/IRcNRwvioudp3G+YmJrIemW3CLNledupRienPCbE9u4a8GfR3MdDL/g
 JUNg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXtT4u3XZz0It1dLN6T2bmZuufU+VVJI78yftAlpNDcTsIS27DH3oybwASH1Pu9tqsrbXYx0vS10DguZWhxFBXK7Jk=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwT9GFXpsXiFgQHX9qWFLdbkaivQMd0kOC+nN5VhtWMqk9HinUS
 r0f5Uxe9qUt2aAgItdx7VnNU3F37g8dYero4M/EW4qgY9ZoH+Cw2jUjejNBUjBaFrTw=
X-Gm-Gg: ASbGncsKV5e3iwW8mu6ZO5WJgJgEHaXy6Tndy9R1YbDDFv83dKCjAw0F2iqx9+A/rCH
 +BPQjXk2QcAHMN0ZX1qUCbW94obsZj7YdIekpJjyDtjtjPgUvgQv0io88RCTIzfN77i7NO4KRyu
 EFeh5OhJRDJFPnCLUpoCunRkvF4Ugy6REFlVktuhe+mHK6U6bq2xazaQk/+aGn5Ak8R6b7hMKqo
 P3EaoqM3xVDd/Mgu+XyGkotqblY4tN/Kmxl/9pQrH+MUoKOBW/fdqcVhRNje7Yzu+aaVmCNcaT0
 kL0Y13mrb+qdTIMtV8h3g+fLq6u7ZrViNwEZTcAxqJI+gAa7w6YgrsM3LVZPYoRW6g==
X-Google-Smtp-Source: AGHT+IFtCdsypXfUIdSkDWsQPLx8bOs0XHQwf9Hrlo4CGtcSwtwK74KjLlbplPl5Z1gluc8x6QVWFg==
X-Received: by 2002:a05:6830:4188:b0:72b:9d5e:9429 with SMTP id
 46e09a7af769-73a3627b78dmr1784445a34.12.1749871219059; 
 Fri, 13 Jun 2025 20:20:19 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:f41f:8468:bca8:a5f7])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-73a28402827sm437749a34.17.2025.06.13.20.20.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Jun 2025 20:20:18 -0700 (PDT)
Date: Fri, 13 Jun 2025 22:20:12 -0500
From: Corey Minyard <corey@minyard.net>
To: Binbin Zhou <zhoubb.aaron@gmail.com>
Message-ID: <aEzqbLHSB6phFNox@mail.minyard.net>
References: <cover.1749731531.git.zhoubinbin@loongson.cn>
 <aEzFPdYEvbkaH_B5@mail.minyard.net>
 <CAMpQs4L66sXLdj6+ebMXcwq4i+XVi+AmwBbQSx0-EuULNJ5XeQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMpQs4L66sXLdj6+ebMXcwq4i+XVi+AmwBbQSx0-EuULNJ5XeQ@mail.gmail.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Jun 14, 2025 at 10:50:37AM +0800, Binbin Zhou wrote:
 > Hi Corey: > > On Sat, Jun 14,
 2025 at 8:41 AM Corey Minyard <corey@minyard.net>
 wrote: > > > > On Fri, Jun 13, 2025 at 02:43:38PM +0800, [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.47 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uQHRV-0007Qf-SY
Subject: Re: [Openipmi-developer] [PATCH v4 0/3] LoongArch: Add Loongson-2K
 BMC support
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
Reply-To: corey@minyard.net
Cc: jeffbai@aosc.io, Lee Jones <lee@kernel.org>,
 Corey Minyard <minyard@acm.org>, Binbin Zhou <zhoubinbin@loongson.cn>,
 kexybiscuit@aosc.io, Huacai Chen <chenhuacai@kernel.org>,
 linux-kernel@vger.kernel.org, loongarch@lists.linux.dev, wangyao@lemote.com,
 Xuerui Wang <kernel@xen0n.name>, openipmi-developer@lists.sourceforge.net,
 Huacai Chen <chenhuacai@loongson.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gU2F0LCBKdW4gMTQsIDIwMjUgYXQgMTA6NTA6MzdBTSArMDgwMCwgQmluYmluIFpob3Ugd3Jv
dGU6Cj4gSGkgQ29yZXk6Cj4gCj4gT24gU2F0LCBKdW4gMTQsIDIwMjUgYXQgODo0MeKAr0FNIENv
cmV5IE1pbnlhcmQgPGNvcmV5QG1pbnlhcmQubmV0PiB3cm90ZToKPiA+Cj4gPiBPbiBGcmksIEp1
biAxMywgMjAyNSBhdCAwMjo0MzozOFBNICswODAwLCBCaW5iaW4gWmhvdSB3cm90ZToKPiA+ID4g
SGkgYWxsOgo+ID4gPgo+ID4gPiBUaGlzIHBhdGNoIHNldCBpbnRyb2R1Y2VzIHRoZSBMb29uZ3Nv
bi0ySyBCTUMuCj4gPiA+Cj4gPiA+IEl0IGlzIGEgUENJZSBkZXZpY2UgcHJlc2VudCBvbiBzZXJ2
ZXJzIHNpbWlsYXIgdG8gdGhlIExvb25nc29uLTMgQ1BVcy4KPiA+ID4gQW5kIGl0IGlzIGEgbXVs
dGlmdW5jdGlvbmFsIGRldmljZSAoTUZEKSwgc3VjaCBhcyBkaXNwbGF5IGFzIGEgc3ViLWZ1bmN0
aW9uCj4gPiA+IG9mIGl0Lgo+ID4KPiA+IEkndmUgYXNrZWQgdGhpcyBiZWZvcmUsIGJ1dCBJIGhh
dmVuJ3QgZ290dGVuIGEgYW5zd2VyLCBJIGRvbid0IHRoaW5rLgo+ID4KPiA+IElzIHRoaXMgcmVh
bGx5IGEgbXVsdGktZnVuY3Rpb24gZGV2aWNlPyAgSXMgdGhlcmUgKG9yIHdpbGwgdGhlcmUgYmUp
Cj4gPiBhbm90aGVyIGRyaXZlciB0aGF0IHVzZXMgdGhlIE1GRCBjb2RlPwo+IAo+IEkgYW0gdmVy
eSBzb3JyeSwgSSBtYXkgaGF2ZSBvdmVybG9va2VkIHlvdXIgcHJldmlvdXMgcXVlc3Rpb24uCj4g
Cj4gQW5kIEkgYWxzbyBtYXkgbm90IGhhdmUgYSB0aG9yb3VnaCB1bmRlcnN0YW5kaW5nIG9mIG11
bHRpZnVuY3Rpb24gZGV2aWNlcy4KPiAKPiBUaGUgTG9vbmdzb24tMksgQk1DIGRldmljZSBwcm92
aWRlcyB0d28gZnVuY3Rpb25zOiBkaXNwbGF5IGFuZCBJUE1JLgo+IEZvciBkaXNwbGF5LCB3ZSBw
YXNzIHRoZSBzaW1wbGVmYl9wbGF0Zm9ybV9kYXRhIHBhcmFtZXRlciBhbmQgcmVnaXN0ZXIKPiB0
aGUgc2ltcGxlZHJtIGRldmljZSwgYXMgc2hvd24gaW4gcGF0Y2gtMS4KPiAKPiBUaGVyZWZvcmUs
IEkgdGhpbmsgdGhpcyBzaG91bGQgYmUgY29uc2lkZXJlZCBhIG11bHRpZnVuY3Rpb24gZGV2aWNl
LgoKT2ssIHRoYXQncyBjbGVhciwgdGhhbmsgeW91LgoKSG93ZXZlciwgdGhhdCdzIG5vdCByZWFs
bHkgdmVyeSBjbGVhciBmcm9tIHRoZSBwYXRjaGVzIHlvdSBoYXZlCnByb3ZpZGVkLiAgUGFydGlj
dWxhcmx5LCB0aGUgImJtYyIgaW4gdGhlIG5hbWUgZnJvbSBwYXRjaCAxIG1ha2VzIG9uZQp0aGlu
ayB0aGF0IGl0J3Mgb25seSBhIGJtYy4KClRoZSAiYm1jIiBuYW1lIGlzIGFsc28gYSBsaXR0bGUg
Y29uZnVzaW5nOyB0aGUgZGV2aWNlcyB3aXRoIGEgImJtYyIgaW4KdGhlIG5hbWUgYXJlIGFsbCB0
aGUgQk1DIHNpZGUsIGJ1dCB5b3UgYXJlIGRvaW5nIGEgaG9zdCBzaWRlIGRldmljZS4KCklmIHlv
dSBsb29rIGF0IG1vc3Qgb2YgdGhlIG90aGVyIE1GRHMsIHRoZXkgaGF2ZSBhICJjb3JlIiBzZWN0
aW9uIHRoZW4KdmFyaW91cyBvdGhlciBwYXJ0cyB0aGF0IHVzZSB0aGUgY29yZS4gIEFuZCBwb3Nz
aWJseSBwYXJ0cyBpbiBvdGhlcgpkaXJlY3RvcmllcyBmb3IgaW5kaXZpZHVhbCBmdW5jdGlvbnMu
ICBJIHRoaW5rIHlvdSBuZWVkIHRvIGRvIHRoZSBzYW1lCmRlc2lnbi4gIEhhdmUgYSAiY29yZSIg
c2VjdGlvbiB0aGF0IGJvdGggdGhlIGRpc3BsYXkgYW5kIGJtYyB1c2UsIHRoZW4gYQpzZXBhcmF0
ZSBkaXNwbGF5IGFuZCBibWMgZHJpdmVyLgoKVGhhdCB3YXksIHlvdSBjYW4gdXNlIHRoZSBkaXNw
bGF5IHdpdGhvdXQgdGhlIElQTUkgaW50ZXJmYWNlLCBvciB0aGUKSVBNSSBpbnRlcmZhY2Ugd2l0
aG91dCB0aGUgZGlzcGxheS4KCkkgd291bGQgbGlrZSB0byBzZWU6CgoqIEEgY29yZSBtZmQgZGV2
aWNlIG5hbWVkIGxzMmstY29yZS5jIHRoYXQgaGFzIHRoZSBjb3JlIGZ1bmN0aW9ucy4KICBJdCB3
b3VsZCBoYXZlIGl0cyBvd24gY29uZmlnIGl0ZW0gKE1GRF9MUzJLKSB0aGF0IHdvdWxkIGJlCiAg
c2VsZWN0ZWQgaWYgZWl0aGVyIHRoZSBkaXNwbGF5IG9yIElQTUkgZGV2aWNlIGlzIGVuYWJsZWQu
CgoqIEEgc2VwYXJhdGUgZGlzcGxheSBkZXZpY2UgaW4gaXRzIG93biBmaWxlIHdpdGggaXRzIG93
biBjb25maWcgaXRlbS4KICBUaGlzIGlzbid0IG15IGFyZWEsIHNvIEknbSBub3Qgc3VyZSB3aGVy
ZSB0aGlzIHNob3VsZCBnby4KCiogVGhlIElQTUkgZGV2aWNlIGluIHRoZSBpcG1pIGRpcmVjdG9y
eSBuYW1lZCBpcG1pX2xzMmsuYywgYWdhaW4KICB3aXRoIGl0J3Mgb3duIGNvbmZpZyBpdGVtIChJ
UE1JX0xTMkspLgoKRG9lcyB0aGF0IG1ha2Ugc2Vuc2U/ICBJIGRvbid0IHdhbnQgdG8gbWFrZSB0
aGluZ3MgdG9vIGhhcmQsIGJ1dCB0aGF0J3MKdGhlIHdheSBwcmV0dHkgbXVjaCBldmVyeXRoaW5n
IGVsc2UgaXMgZG9uZSBvbiBNRkRzLgoKVGhhbmtzLAoKLWNvcmV5Cgo+IAo+ID4KPiA+IElmIG5v
dGhpbmcgZWxzZSBpcyBnb2luZyB0byB1c2UgdGhpcywgdGhlbiBpdCdzIHJlYWxseSBub3QgYQo+
ID4gbXVsdGktZnVuY3Rpb24gZGV2aWNlIGFuZCBhbGwgdGhlIGNvZGUgY2FuIGdvIGludG8gdGhl
IElQTUkgZGlyZWN0b3J5Lgo+ID4gVGhhdCBzaW1wbGlmaWVzIG1haW50ZW5hbmNlLgo+ID4KPiA+
IElmIGl0IGlzIGEgbXVsdGktZnVuY3Rpb24gZGV2aWNlLCB0aGVuIEkgd2FudCB0d28gc2VwYXJh
dGUgS2NvbmZpZwo+ID4gaXRlbXMsIG9uZSBmb3IgdGhlIE1GRCBhbmQgb25lIGZvciB0aGUgSVBN
SSBwb3J0aW9uLiAgVGhhdCB3YXkgaXQncwo+ID4gcmVhZHkgYW5kIHlvdSBkb24ndCBoYXZlIHRv
IGJvdGhlciBhYm91dCB0aGUgSVBNSSBwb3J0aW9uIHdoZW4KPiA+IGFkZGluZyB0aGUgb3RoZXIg
ZGV2aWNlLgo+ID4KPiA+IEFsbCBlbHNlIGxvb2tzIGdvb2QsIEkgdGhpbmsuCj4gPgo+ID4gLWNv
cmV5Cj4gPgo+ID4gPgo+ID4gPiBGb3IgSVBNSSwgYWNjb3JkaW5nIHRvIHRoZSBleGlzdGluZyBk
ZXNpZ24sIHdlIHVzZSBzb2Z0d2FyZSBzaW11bGF0aW9uIHRvCj4gPiA+IGltcGxlbWVudCB0aGUg
S0NTIGludGVyZmFjZSByZWdpc3RlcnM6IFN0YXV0cy9Db21tYW5kL0RhdGFfT3V0L0RhdGFfSW4u
Cj4gPiA+Cj4gPiA+IEFsc28gc2luY2UgYm90aCBob3N0IHNpZGUgYW5kIEJNQyBzaWRlIHJlYWQg
YW5kIHdyaXRlIGtjcyBzdGF0dXMsIHdlIHVzZQo+ID4gPiBmaWZvIHBvaW50ZXIgdG8gZW5zdXJl
IGRhdGEgY29uc2lzdGVuY3kuCj4gPiA+Cj4gPiA+IEZvciB0aGUgZGlzcGxheSwgYmFzZWQgb24g
c2ltcGxlZHJtLCB0aGUgcmVzb2x1dGlvbiBpcyByZWFkIGZyb20gYSBmaXhlZAo+ID4gPiBwb3Np
dGlvbiBpbiB0aGUgQk1DIHNpbmNlIHRoZSBoYXJkd2FyZSBkb2VzIG5vdCBzdXBwb3J0IGF1dG8t
ZGV0ZWN0aW9uCj4gPiA+IG9mIHRoZSByZXNvbHV0aW9uLiBPZiBjb3Vyc2UsIHdlIHdpbGwgdHJ5
IHRvIHN1cHBvcnQgbXVsdGlwbGUKPiA+ID4gcmVzb2x1dGlvbnMgbGF0ZXIsIHRocm91Z2ggYSB2
Ymlvcy1saWtlIGFwcHJvYWNoLgo+ID4gPgo+ID4gPiBFc3BlY2lhbGx5LCBmb3IgdGhlIEJNQyBy
ZXNldCBmdW5jdGlvbiwgc2luY2UgdGhlIGRpc3BsYXkgd2lsbCBiZQo+ID4gPiBkaXNjb25uZWN0
ZWQgd2hlbiBCTUMgcmVzZXQsIHdlIG1hZGUgYSBzcGVjaWFsIHRyZWF0bWVudCBvZiByZS1wdXNo
Lgo+ID4gPgo+ID4gPiBCYXNlZCBvbiB0aGlzLCBJIHdpbGwgcHJlc2VudCBpdCBpbiBmb3VyIHBh
dGNoZXM6Cj4gPiA+IHBhdGNoLTE6IEJNQyBkZXZpY2UgUENJIHJlc291cmNlIGFsbG9jYXRpb24u
Cj4gPiA+IHBhdGNoLTI6IEJNQyByZXNldCBmdW5jdGlvbiBzdXBwb3J0Cj4gPiA+IHBhdGNoLTM6
IElQTUkgaW1wbGVtZW50YXRpb24KPiA+ID4KPiA+ID4gVGhhbmtzLgo+ID4gPgo+ID4gPiAtLS0t
LS0tCj4gPiA+IFY0Ogo+ID4gPiAtIEFkZCBSZXZpZXdlZC1ieSB0YWc7Cj4gPiA+IC0gQ2hhbmdl
IHRoZSBvcmRlciBvZiB0aGUgcGF0Y2hlcy4KPiA+ID4gUGF0Y2ggKDEvMyk6Cj4gPiA+ICAgLSBG
aXggYnVpbGQgd2FybmluZyBieSBsa3A6IEtjb25maWcgdHJpc3RhdGUgLT4gYm9vbAo+ID4gPiAg
ICAgLSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTA1MzEyMDIyLlFtRm1HRTFGLWxr
cEBpbnRlbC5jb20vCj4gPiA+ICAtIFVwZGF0ZSBjb21taXQgbWVzc2FnZTsKPiA+ID4gIC0gTW92
ZSBNRkRfTFMyS19CTUMgYWZ0ZXIgTUZEX0lOVEVMX00xMF9CTUNfUE1DSSBpbiBLY29uZmlnIGFu
ZAo+ID4gPiAgICBNYWtlZmlsZS4KPiA+ID4gUGF0Y2ggKDIvMyk6Cj4gPiA+ICAgLSBSZW1vdmUg
dW5uZWNlc3NhcnkgbmV3bGluZXM7Cj4gPiA+ICAgLSBSZW5hbWUgbHMya19ibWNfY2hlY2tfcGNp
ZV9jb25uZWN0ZWQoKSB0bwo+ID4gPiAgICAgbHMya19ibWNfcGNpZV9pc19jb25uZWN0ZWQoKTsK
PiA+ID4gICAtIFVwZGF0ZSBjb21tZW50IG1lc3NhZ2UuCj4gPiA+IFBhdGNoICgzLzMpOgo+ID4g
PiAgIC0gUmVtb3ZlIHVubmVjZXNzYXJ5IG5ld2xpbmVzLgo+ID4gPgo+ID4gPiBMaW5rIHRvIFYz
Ogo+ID4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvY292ZXIuMTc0ODUwNTQ0Ni5naXQu
emhvdWJpbmJpbkBsb29uZ3Nvbi5jbi8KPiA+ID4KPiA+ID4gVjM6Cj4gPiA+IFBhdGNoICgxLzMp
Ogo+ID4gPiAgLSBEcm9wICJNRkQiIGluIHRpdGxlIGFuZCBjb21tZW50Owo+ID4gPiAgLSBGcm9t
YXR0aW5nIGNvZGU7Cj4gPiA+ICAtIEFkZCBjbGVhcmVyIGNvbW1lbnRzLgo+ID4gPiBQYXRjaCAo
Mi8zKToKPiA+ID4gIC0gUmViYXNlIGxpbnV4LWlwbWkvbmV4dCB0cmVlOwo+ID4gPiAgLSBVc2Ug
cmVhZHgoKS93cml0ZXgoKSB0byByZWFkIGFuZCB3cml0ZSBJUE1JIGRhdGEgaW5zdGVhZCBvZiBz
dHJ1Y3R1cmUKPiA+ID4gICAgcG9pbnRlciByZWZlcmVuY2VzOwo+ID4gPiAgLSBDT05GSUdfTE9P
TkdBUkNIIC0+IE1GRF9MUzJLX0JNQzsKPiA+ID4gIC0gRHJvcCB1bnVzZWQgb3V0cHV0Lgo+ID4g
PiBQYXRjaCAoMy8zKToKPiA+ID4gIC0gSW5saW5lIHRoZSBsczJrX2JtY19ncGlvX3Jlc2V0X2hh
bmRsZXIoKSBmdW5jdGlvbiB0byBsczJrX2JtY19wZGF0YV9pbml0aWFsKCk7Cj4gPiA+ICAtIEFk
ZCBjbGVhcmVyIGNvbW1lbnRzLgo+ID4gPiAgLSBVc2UgcHJvcGVyIG11bHRpLWxpbmUgY29tbWVu
dGFyeSBhcyBwZXIgdGhlIENvZGluZyBTdHlsZSBkb2N1bWVudGF0aW9uOwo+ID4gPiAgLSBEZWZp
bmUgYWxsIG1hZ2ljIG51bWJlcnMuCj4gPiA+Cj4gPiA+IExpbmsgdG8gVjI6Cj4gPiA+IGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2FsbC9jb3Zlci4xNzQ3Mjc2MDQ3LmdpdC56aG91YmluYmluQGxv
b25nc29uLmNuLwo+ID4gPgo+ID4gPiBWMjoKPiA+ID4gLSBEcm9wIGxzMmtkcm0sIHVzZSBzaW1w
bGVkcm0gaW5zdGVhZC4KPiA+ID4gUGF0Y2ggKDEvMyk6Cj4gPiA+ICAtIFVzZSBERUZJTkVfUkVT
X01FTV9OQU1FRC9NRkRfQ0VMTF9SRVMgc2ltcGxpZmllZCBjb2RlOwo+ID4gPiAgLSBBZGQgcmVz
b2x1dGlvbiBmZXRjaGluZyBkdWUgdG8gcmVwbGFjaW5nIHRoZSBvcmlnaW5hbCBkaXNwbGF5Cj4g
PiA+ICAgIHNvbHV0aW9uIHdpdGggc2ltcGxlZHJtOwo+ID4gPiAgLSBBZGQgYXBlcnR1cmVfcmVt
b3ZlX2NvbmZsaWN0aW5nX2RldmljZXMoKSB0byBhdm9pZCBlZmlmYgo+ID4gPiAgICBjb25mbGlj
dCB3aXRoIHNpbXBsZWRybS4KPiA+ID4gUGF0Y2ggKDMvMyk6Cj4gPiA+ICAtIFRoaXMgcGFydCBv
ZiB0aGUgZnVuY3Rpb24sIG1vdmVkIGZyb20gdGhlIG9yaWdpbmFsIGxzMmtkcm0gdG8gbWZkOwo+
ID4gPiAgLSBVc2Ugc2V0X2NvbnNvbGUgdG8gaW1wbGVtZW50IHRoZSBSZS1wdXNoIGRpc3BsYXkg
ZnVuY3Rpb24uCj4gPiA+Cj4gPiA+IExpbmsgdG8gVjE6Cj4gPiA+IGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2FsbC9jb3Zlci4xNzM1NTUwMjY5LmdpdC56aG91YmluYmluQGxvb25nc29uLmNuLwo+
ID4gPgo+ID4gPiBCaW5iaW4gWmhvdSAoMyk6Cj4gPiA+ICAgbWZkOiBsczJrYm1jOiBJbnRyb2R1
Y2UgTG9vbmdzb24tMksgQk1DIGNvcmUgZHJpdmVyCj4gPiA+ICAgbWZkOiBsczJrYm1jOiBBZGQg
TG9vbmdzb24tMksgQk1DIHJlc2V0IGZ1bmN0aW9uIHN1cHBvcnQKPiA+ID4gICBpcG1pOiBBZGQg
TG9vbmdzb24tMksgQk1DIHN1cHBvcnQKPiA+ID4KPiA+ID4gIGRyaXZlcnMvY2hhci9pcG1pL01h
a2VmaWxlICAgICAgIHwgICAxICsKPiA+ID4gIGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2kuaCAg
ICAgIHwgICA3ICsKPiA+ID4gIGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfaW50Zi5jIHwgICAz
ICsKPiA+ID4gIGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfbHMyay5jIHwgMTg5ICsrKysrKysr
KysrKwo+ID4gPiAgZHJpdmVycy9tZmQvS2NvbmZpZyAgICAgICAgICAgICAgfCAgMTIgKwo+ID4g
PiAgZHJpdmVycy9tZmQvTWFrZWZpbGUgICAgICAgICAgICAgfCAgIDIgKwo+ID4gPiAgZHJpdmVy
cy9tZmQvbHMya2JtYy1tZmQuYyAgICAgICAgfCA0ODUgKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKwo+ID4gPiAgNyBmaWxlcyBjaGFuZ2VkLCA2OTkgaW5zZXJ0aW9ucygrKQo+ID4gPiAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfbHMyay5jCj4gPiA+
ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9tZmQvbHMya2JtYy1tZmQuYwo+ID4gPgo+ID4g
Pgo+ID4gPiBiYXNlLWNvbW1pdDogY2QyZTEwM2Q1N2U1NjE1ZjliYjAyN2Q3NzJmOTNiOWVmZDU2
NzIyNAo+ID4gPiAtLQo+ID4gPiAyLjQ3LjEKPiA+ID4KPiAKPiAKPiAtLSAKPiBUaGFua3MuCj4g
QmluYmluCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
T3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
