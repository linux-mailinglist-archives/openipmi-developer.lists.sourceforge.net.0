Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BBB6A5DE8
	for <lists+openipmi-developer@lfdr.de>; Tue, 28 Feb 2023 18:04:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pX3P2-0005d3-E9;
	Tue, 28 Feb 2023 17:04:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1pX3Op-0005cn-DC
 for openipmi-developer@lists.sourceforge.net;
 Tue, 28 Feb 2023 17:04:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uF6sGCjOU9rDSKmPINTDFSc4ycj+uV1beakNMTzc0CU=; b=jBX4lfCxtT0T8dwEmKc0/S77u4
 VPIYhNjLK8hKIHbRSR6UDU9iTjIzY4zW5vwRjqrUKpuUdO4PZ3zqr6kV/Y3x++YwqBTfEFrkxL7US
 O8tT6Etcyn6Geb4UkFeeOp/fr5PSMozgOW9hzcNWGuWpiu7syfHip3I6T5n3b4SPH/to=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uF6sGCjOU9rDSKmPINTDFSc4ycj+uV1beakNMTzc0CU=; b=lgduOK+gBOlOzVOf6cPbvtZdKY
 BRz9daWcFkuVUsF5cSt+lRRph0vRBTIdr6I3KpxhR6vWQGJlMeTnRz0pEAG5VHR4yPT0qT7DhVDLU
 tYPrcOrK5nj8F4HemCP/mdTlNmcVZ5f0qRgQbYdDXszmhnosn+HqoTgyuBDfzy4eywyQ=;
Received: from mail-qt1-f178.google.com ([209.85.160.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pX3Oi-0002nQ-IN for openipmi-developer@lists.sourceforge.net;
 Tue, 28 Feb 2023 17:04:19 +0000
Received: by mail-qt1-f178.google.com with SMTP id ay9so11220902qtb.9
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 28 Feb 2023 09:04:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:from:to:cc:subject:date:message-id:reply-to;
 bh=uF6sGCjOU9rDSKmPINTDFSc4ycj+uV1beakNMTzc0CU=;
 b=EUf4GSmHD/qhZHMC1LGtCHRESmE6s/QnooU5GbOZyOLL2L2l0ZfyUAWM9ALpyu3diG
 f3Lt9V+hdQZaOQOZ3qxe8JoF31nHqU+JNZ4fRQQlVxX81LLH8KOHzr+w/NM7zk1fITxX
 Aax+SmrbjwGWPmShtxD4BplGdTocYa249GTasM0f8al+wEKM/T6TgobBpTvbGNCEztEX
 g6kPBeQPdF+iI/5IJAU3FjsBEUaEeT5BiYGtxLp/RBNRK7QVaEn3oVw6RkA0NZg2yFmY
 aSZU1bSDFFtXnvO5TcvNIPbV87HZpdutp5kIRVlEoGxJqdzxyLuGLgKTWjXxsHcsClvd
 vaHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=uF6sGCjOU9rDSKmPINTDFSc4ycj+uV1beakNMTzc0CU=;
 b=vrRDDbuNvwmjP/G00ga7CTvpukvKISGp7AX2dupm91MGRSFByBxgIZ3vTKkRMZ30mQ
 uh9NmdU7iw7G00/cDFdUuKnrz5qFfFPHf24hjLaTJcl/vN5+76yE9pp3NXcTrRQGeokg
 ixC+JDZTnx7bGrDFCW6fChtz4TgPBSZHuhPXniue9VIChPP95ydtxmdXYiA7mKV7Uvgm
 E7VBBUGqnZIiWXEY0KSNI2kwxLj1In+nRPVpTxKbkNiptPyPnBI/gUeMfAJK2WMlo9lB
 wowmfjer/4VKfhCLMWe0KLvdcpMBERP1IpsrvLFl2IcdZS6C4hdH4SW9oFDAxFBPlD2d
 4nVA==
X-Gm-Message-State: AO0yUKVsM2Af0kwmw/583izjMYwRG4cLpdDyMk2xnFFA5dH4JXgo7i0u
 S5gyiY8FcZuLNYnt4ggZIb0yJMvACg==
X-Google-Smtp-Source: AK7set/PRFaGGxVKLguQeCKf1UTd88k4UhABZ2rFH/zpkA8mYRybcZY3Ls4XfQt7r+71QAJLBrE5Xg==
X-Received: by 2002:ac8:5ac4:0:b0:3bf:bbb9:a301 with SMTP id
 d4-20020ac85ac4000000b003bfbbb9a301mr6821870qtd.14.1677603851263; 
 Tue, 28 Feb 2023 09:04:11 -0800 (PST)
Received: from serve.minyard.net ([47.184.176.248])
 by smtp.gmail.com with ESMTPSA id
 n15-20020ac81e0f000000b003b691385327sm5182002qtl.6.2023.02.28.09.04.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Feb 2023 09:04:10 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8584:8d72:eb3d:d4f5])
 by serve.minyard.net (Postfix) with ESMTPSA id A38EE1800BD;
 Tue, 28 Feb 2023 17:04:09 +0000 (UTC)
Date: Tue, 28 Feb 2023 11:04:08 -0600
From: Corey Minyard <minyard@acm.org>
To: Christian Theune <ct@flyingcircus.io>
Message-ID: <Y/40CIt6lw+0vjv1@minyard.net>
References: <4EA3F27B-7819-446F-9F22-C6B167348E88@flyingcircus.io>
 <Y/4tpHxe0irCRxjK@minyard.net>
 <D77B48B4-37B1-49FA-958C-D436407300B1@flyingcircus.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <D77B48B4-37B1-49FA-958C-D436407300B1@flyingcircus.io>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Oh, I forgot. You can look at panic_op in
 /sys/module/ipmi_msghandler/parameters/panic_op
 -corey On Tue, Feb 28, 2023 at 05:48:07PM +0100,
 Christian Theune via Openipmi-developer
 wrote: > Hi, > > > On 28. Feb 2023, at 17:36, Corey Minyard <minyard@acm.org>
 wrote: > > > > On Tue, Feb 28, 2023 at 0 [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.178 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.178 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1pX3Oi-0002nQ-IN
Subject: Re: [Openipmi-developer] PANIC / OEM strings missing,
 not sure whether misconfiguration or a bug
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

T2gsIEkgZm9yZ290LiAgWW91IGNhbiBsb29rIGF0IHBhbmljX29wIGluIC9zeXMvbW9kdWxlL2lw
bWlfbXNnaGFuZGxlci9wYXJhbWV0ZXJzL3BhbmljX29wCgotY29yZXkKCk9uIFR1ZSwgRmViIDI4
LCAyMDIzIGF0IDA1OjQ4OjA3UE0gKzAxMDAsIENocmlzdGlhbiBUaGV1bmUgdmlhIE9wZW5pcG1p
LWRldmVsb3BlciB3cm90ZToKPiBIaSwKPiAKPiA+IE9uIDI4LiBGZWIgMjAyMywgYXQgMTc6MzYs
IENvcmV5IE1pbnlhcmQgPG1pbnlhcmRAYWNtLm9yZz4gd3JvdGU6Cj4gPiAKPiA+IE9uIFR1ZSwg
RmViIDI4LCAyMDIzIGF0IDAyOjUzOjEyUE0gKzAxMDAsIENocmlzdGlhbiBUaGV1bmUgdmlhIE9w
ZW5pcG1pLWRldmVsb3BlciB3cm90ZToKPiA+PiBIaSwKPiA+PiAKPiA+PiBJ4oCZdmUgYmVlbiB0
cnlpbmcgdG8gZGVidWcgdGhlIFBBTklDIGFuZCBPRU0gc3RyaW5nIGhhbmRsaW5nIGFuZCBhbSBy
dW5uaW5nIG91dCBvZiBpZGVhcyB3aGV0aGVyIHRoaXMgaXMgYSBidWcgb3Igd2hldGhlciBzb21l
dGhpbmcgc28gc3VidGxlIGhhcyBjaGFuZ2VkIGluIG15IGNvbmZpZyB0aGF0IEnigJltIGp1c3Qg
bm90IHNlZWluZyBpdC4KPiA+PiAKPiA+PiAoTm90ZTogSeKAmW0gd2lsbGluZyB0byBwYXkgZm9y
IGNvbnN1bHRpbmcuKQo+ID4gCj4gPiBQcm9iYWJseSBub3QgbmVjZXNzYXJ5Lgo+IAo+IFRoYW5r
cyEgVGhlIG9mZmVyIGFsd2F5cyBzdGFuZHMuIElmIHdlIHNob3VsZCBldmVyIG1lZXQgSeKAmW0g
YWxzbyBhYmxlIHRvIHBheSBpbiBiZXZlcmFnZXMuIDspCj4gCj4gPj4gSSBoYXZlIG1hY2hpbmVz
IHRoYXQgd2XigJl2ZSBtb3ZlZCBmcm9tIGFuIG9sZGVyIHNldHVwIChHZW50b28sIChtb3N0bHkp
IHZhbmlsbGEga2VybmVsIDQuMTkuMTU3KSB0byBhIG5ld2VyIHNldHVwIChOaXhPUywgKG1vc3Rs
eSkgdmFuaWxsYSBrZXJuZWwgNS4xMC4xNTkpIGFuZCBJ4oCZbSBub3cgZXhwZXJpZW5jaW5nIGNy
YXNoZXMgdGhhdCBzZWVtIHRvIGJlIGtlcm5lbCBwYW5pY3MgYnV0IGRvIG5vdCBnZXQgdGhlIHVz
dWFsIG1lc3NhZ2VzIGluIHRoZSBJUE1JIFNFTC4KPiA+IAo+ID4gSSBqdXN0IHRlc3RlZCBvbiBz
dG9jayA1LjEwLjE1OSBhbmQgaXQgd29ya2VkIHdpdGhvdXQgaXNzdWUuICBFdmVyeXRoaW5nCj4g
PiB5b3UgaGF2ZSBiZWxvdyBsb29rcyBvay4KPiA+IAo+ID4gQ2FuIHlvdSB0ZXN0IGJ5IGNhdXNp
bmcgYSBjcmFzaCB3aXRoOgo+ID4gCj4gPiAgZWNobyBjID4vcHJvYy9zeXNycS10cmlnZ2VyCj4g
PiAKPiA+IGFuZCBzZWUgaWYgaXQgd29ya3M/Cj4gCj4gWWVhaCwgYWxyZWFkeSB0cmllZCB0aGF0
IGFuZCB1bmZvcnR1bmF0ZWx5IHRoYXQgX2RvZXNu4oCZdF8gd29yay4KPiAKPiA+IEl0IHNvdW5k
cyBsaWtlIHlvdSBhcmUgaGF2aW5nIHNvbWUgdHlwZSBvZiBjcmFzaCB0aGF0IHlvdSB3b3VsZCBu
b3JtYWxseQo+ID4gdXNlIHRoZSBJUE1JIGxvZ3MgdG8gZGVidWcuICBIb3dldmVyLCB0aGV5IGFy
ZW4ndCBwZXJmZWN0LCB0aGUgc3lzdGVtCj4gPiBoYXMgdG8gc3RheSB1cCBsb25nIGVub3VnaCB0
byBnZXQgdGhlbSBpbnRvIHRoZSBldmVudCBsb2cuCj4gCj4gSSB0aGluayB0aGV5IGFyZSBzdGF5
aW5nIHVwIGxvbmcgZW5vdWdoIGJlY2F1c2UgYSBwYW5pYyB0cmlnZ2VycyB0aGUgMjU1IHNlY29u
ZCBidW1wIGluIHRoZSB3YXRjaGRvZyBhbmQgb25seSB0aGVuIHBhc3Mgb24uIEhvd2V2ZXIsIGni
gJl2ZSBhbHNvIG5vdGljZWQgdGhhdCB0aGUga2VybmVsIF9zaG91bGRfIGJlIHJlYm9vdGluZyBh
ZnRlciBhIHBhbmljIG11Y2ggZmFzdGVyIChhbmQgbm90IHJlbHkgb24gdGhlIHdhdGNoZG9nKSBh
bmQgdGhhdCBkb2VzbuKAmXQgaGFwcGVuIGVpdGhlci4gKFNvcnJ5IHRoaXMganVzdCBwb3BwZWQg
ZnJvbSB0aGUgYmFjayBvZiBteSBoZWFkKS4KPiAKPiA+IEluIHRoaXMgc2l0dWF0aW9uLCBnZXR0
aW5nIGEgc2VyaWFsIGNvbnNvbGUgKHByb2JhYmx5IHRocm91Z2ggSVBNSQo+ID4gU2VyaWFsIG92
ZXIgTEFOKSBhbmQgZ2V0dGluZyB0aGUgY29uc29sZSBvdXRwdXQgb24gYSBjcmFzaCBpcyBwcm9i
YWJseQo+ID4geW91ciBiZXN0IG9wdGlvbi4gIFlvdSBjYW4gdXNlIGlwbWl0b29sIGZvciB0aGlz
LCBvciBJIGhhdmUgYSBsaWJyYXJ5Cj4gPiB0aGF0IGlzIGFibGUgdG8gbWFrZSBjb25uZWN0aW9u
cyB0byBzZXJpYWwgcG9ydHMsIGluY2x1ZGluZyB0aHJvdWdoIElQTUkKPiA+IFNvTC4KPiAKPiBZ
dXAuIEJlZW4gdGhlcmUsIHRvby4gOikKPiAKPiBVbmZvcnR1bmF0ZWx5IHdl4oCZcmUgY3VycmVu
dGx5IGNoYXNpbmcgc29tZXRoaW5nIHRoYXQgcG9wcyB1cCB2ZXJ5IHJhbmRvbWx5IG9uIHNvbWV3
aGF0IG9kZCBtYWNoaW5lcyBhbmQgSSBhbHNvIGhhdmUgdGhlIGZlZWxpbmcgdGhhdCBpdOKAmXMg
c3lzdGVtYXRpY2FsbHkgYnJva2VuIHJpZ2h0IG5vdyAoYXMgdGhlIOKAnGVjaG8gY+KAnSBkb2Vz
buKAmXQgd29yaykuCj4gCj4gVGhhbmtzIGEgbG90LAo+IENocmlzdGlhbgo+IAo+IC0tIAo+IENo
cmlzdGlhbiBUaGV1bmUgwrcgY3RAZmx5aW5nY2lyY3VzLmlvIMK3ICs0OSAzNDUgMjE5NDAxIDAK
PiBGbHlpbmcgQ2lyY3VzIEludGVybmV0IE9wZXJhdGlvbnMgR21iSCDCtyBodHRwczovL2ZseWlu
Z2NpcmN1cy5pbwo+IExlaXB6aWdlciBTdHIuIDcwLzcxIMK3IDA2MTA4IEhhbGxlIChTYWFsZSkg
wrcgRGV1dHNjaGxhbmQKPiBIUiBTdGVuZGFsIEhSQiAyMTE2OSDCtyBHZXNjaMOkZnRzZsO8aHJl
cjogQ2hyaXN0aWFuIFRoZXVuZSwgQ2hyaXN0aWFuIFphZ3JvZG5pY2sKPiAKPiAKPiAKPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IE9wZW5pcG1pLWRl
dmVsb3BlciBtYWlsaW5nIGxpc3QKPiBPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9y
Z2UubmV0Cj4gaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3Bl
bmlwbWktZGV2ZWxvcGVyCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9w
ZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
