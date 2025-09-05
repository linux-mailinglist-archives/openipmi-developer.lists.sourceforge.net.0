Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F89B462BD
	for <lists+openipmi-developer@lfdr.de>; Fri,  5 Sep 2025 20:50:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MP28RRy0xAi9KkMXFQX6RsqicDMV5Zr4UBAjlIxllWk=; b=B+cEIE+wTI6+u7giZwej1SAPsg
	ghwfFsdCb+/WYT8svuSqMJ/GaOlQWXdMWVweKVX6t/nZYs0Cu584516be+ufAlVuEvYnjhRU8n06c
	srdJbEEB3t4SLVlYSRMAEzTFQ8XpPiLiS3cf3qfAqeF8I1/kUQpx+rdIn5JoFdjjbVic=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uubW0-0002U4-JP;
	Fri, 05 Sep 2025 18:50:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1uubVz-0002Tw-0h
 for openipmi-developer@lists.sourceforge.net;
 Fri, 05 Sep 2025 18:50:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FEEk6xUwhvxiQOfwQMcWge63YTvzvqM+uAXEwNhtVtc=; b=NzCWGSbxfmBSlbU9IXo3MtdiQj
 /nfS2HQoJxl+OyNEoW3cnFvk2yOTGdfejvkgdoZCNYH9J1dxs+efruQ/DmMQ8AZqTCerrvo6Id9jO
 NXJrYt1Bh+L5vVC2inElV3MXeVCImly7qLdrzKfF4L9dAVqrX3kpLKf5k+1E0Vz5pKFs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FEEk6xUwhvxiQOfwQMcWge63YTvzvqM+uAXEwNhtVtc=; b=f4JeJD8ajvOg5D0FZ0tFEvR8Rk
 aHXEhSGb2uLbTY9r/ML0RPrg6J5QN8GD82C0rpGUyf64uEQg2GA58rDhPS85qmI5xk/xh8rLOdAhv
 0E2bVu3J27D9wbK9yh5b6ipjhN2wFV2hGZFxsf3HLOTKMnRYfC9E6BjXY/dhujX3Jehg=;
Received: from mail-ot1-f47.google.com ([209.85.210.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uubVy-0003FY-9U for openipmi-developer@lists.sourceforge.net;
 Fri, 05 Sep 2025 18:50:26 +0000
Received: by mail-ot1-f47.google.com with SMTP id
 46e09a7af769-74526ca7a46so987126a34.2
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 05 Sep 2025 11:50:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1757098220; x=1757703020;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=FEEk6xUwhvxiQOfwQMcWge63YTvzvqM+uAXEwNhtVtc=;
 b=NcjnaSXk1+cI+8rx08sBFguceDOQw/hafKgyMc2i07i3MV2IVqI9pHDuR06KWVDzu3
 4uyXKeIkty2Wawb/T5NSiZWCNNNRsv3j05Fe5+mvm2ie47u552rrGCana8FizEKtCYSX
 Aulh0ZUPzmMatSHEFbh112p+tXg2OdBoeW+oJXXoEpEbPFt76LPfmYcIAAn4y8SDvFzk
 rDi9Ukiu+ZsIaK/VV0arGs41ZWBwsl2gzt1a4U1l94Q7EtJ4HeRvMZMyRjvxnIdN3TKr
 06FByZCBYl1UegipvvWYwatdL+Buy3CEXmzYJnG7TYF92wmB0qpsD9L9eztWGmn1coWZ
 Logg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757098220; x=1757703020;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=FEEk6xUwhvxiQOfwQMcWge63YTvzvqM+uAXEwNhtVtc=;
 b=HpS+Ty+Jv5qCsDOTqhZakWc12eunu9wBYUvuE0lDRMDKQjWgRyQ3lSAoHeS17FAHnj
 Tegr8PnichpclrSap36GMdDe2SdZhuNaTBlzgl3trLvZwhBs5FLUwOEPVYTXWhMaZOAf
 yh/cYI0pVyPgNXqcnogg0O8zMmmhRklLnsz8qcqQ0q9ywb0DRfd8X4sjJcumdr2H+Fvi
 O49I/ryjPyf/3UW9QQfTz5t9drYBuEG5NorTofdx0tFq0fUwZawkOriF7UROIO6r2u6q
 9rZEGC7QgU2SNIV9TzTc0hZoxMkvGY0jy8uPGKv9yiOVGyRi9uhDA6MicSVfyHWpaBeU
 tWPA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWTiF7FNFhnuTcqRgDchnvRRp6yJgGx5NUe7yo1LTNJ7U81awzFiqNCx/6+Z6tMCvc0FqIZA82n0izwyONYs0oSyZc=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yy0qS0zu4oeV/qbUh+tpeAGkqSBI37ryAnfEN0Ti7RU/tYnr0lL
 4W/yiD+AYOMOVfTXHnUyM09hKOH6vdBTGoop1lGqY6ApfNtLB9vDAJaAGxLd/ZkpxnOBQdGwuJP
 Z8Rw9+mY=
X-Gm-Gg: ASbGnct3c8nuNcdiyWc0JHtMLALk12527RSJYi6OZEImCHSKynpsik9ujCz3Q+yg/XJ
 rYEcLdZl2q6RXCOMp94ZpvzvVIlMgnYJoq3WOvUCCRWPFnGwfLEGiFWXgtbEDuZwIQmG/OlnM7k
 DHCwC1qNP8tOw+CE864HZkVZc06GwdtgXgV8pkWLilgidOx5gFOCZtpw6YkgC02xEBx/FCkQteS
 nl7ekZiM/fMMe+xgwQ6APiILZK0aaeJ6/y3WYwx3REdipW5b/WQN0HCk5D8jzylYuoWmlIcI6oY
 +36bwHd3tB5ACpqjPk2HH7CFiHW026L8kYY523Fzmy191UFQsQ8kS8YsNn755xWKyGK68BxvhUq
 3SMtGGRmsWegjFohFSQ/wXV/m
X-Google-Smtp-Source: AGHT+IGhE9dThViFZe1QFt4sm/cQOA52RjTcfkrT7ftr8yl7gfauhn1PktZuJ2w0amu5yhU2y/mqIA==
X-Received: by 2002:a05:6830:498f:b0:742:fefe:4311 with SMTP id
 46e09a7af769-74569deee96mr13615645a34.16.1757098220481; 
 Fri, 05 Sep 2025 11:50:20 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:e171:344b:daa:1a1a])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-746db51a7ccsm1049989a34.30.2025.09.05.11.50.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Sep 2025 11:50:19 -0700 (PDT)
Date: Fri, 5 Sep 2025 13:50:16 -0500
From: Corey Minyard <corey@minyard.net>
To: Gilles BULOZ <gilles.buloz@kontron.com>
Message-ID: <aLsw6G0GyqfpKs2S@mail.minyard.net>
References: <5cc48305-d88d-ac15-ce0d-55306a60a0dd@kontron.com>
 <aLrPbzfho1d2kMsn@mail.minyard.net>
 <aLrRlQZdeToIgPBG@mail.minyard.net>
 <c3c0cba1-a45d-8619-06c0-64046d8ecd76@kontron.com>
 <f14bd1ca-c47a-13b3-fd5f-5f5ad0c89fad@kontron.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f14bd1ca-c47a-13b3-fd5f-5f5ad0c89fad@kontron.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-2.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  I'm adding the OpenIPMI mailing list and the LKML. On Fri,
    Sep 05, 2025 at 05:04:28PM +0200, Gilles BULOZ wrote: > Le 05/09/2025 à
   15:15, Gilles BULOZ a écrit : > > Le 05/09/2025 à 14:03, Corey Minyard a
    écrit : > >> On Fri, Sep 05, 2025 at 06:54: [...] 
 
 Content analysis details:   (0.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.210.47 listed in wl.mailspike.net]
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uubVy-0003FY-9U
Subject: Re: [Openipmi-developer] user->nr_msgs going negative in
 ipmi_msghandler.c
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
Cc: OpenIPMI Developers <openipmi-developer@lists.sourceforge.net>,
 Linux Kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SSdtIGFkZGluZyB0aGUgT3BlbklQTUkgbWFpbGluZyBsaXN0IGFuZCB0aGUgTEtNTC4KCk9uIEZy
aSwgU2VwIDA1LCAyMDI1IGF0IDA1OjA0OjI4UE0gKzAyMDAsIEdpbGxlcyBCVUxPWiB3cm90ZToK
PiBMZSAwNS8wOS8yMDI1IMOgIDE1OjE1LCBHaWxsZXMgQlVMT1ogYSDDqWNyaXTCoDoKPiA+IExl
IDA1LzA5LzIwMjUgw6AgMTQ6MDMsIENvcmV5IE1pbnlhcmQgYSDDqWNyaXTCoDoKPiA+PiBPbiBG
cmksIFNlcCAwNSwgMjAyNSBhdCAwNjo1NDoyM0FNIC0wNTAwLCBDb3JleSBNaW55YXJkIHdyb3Rl
Ogo+ID4+PiBPbiBGcmksIFNlcCAwNSwgMjAyNSBhdCAxMDoxNjoxOUFNICswMjAwLCBHaWxsZXMg
QlVMT1ogd3JvdGU6Cj4gPj4+PiBIaSBDb3JleSwKPiA+Pj4+Cj4gPj4+PiBJJ20gSFcvU1cgZGV2
ZWxvcGVyIGF0IEtvbnRyb24gKGNvbXB1dGVyIG1hbnVmYWN0dXJlcikgYW5kIGRvbid0IGtub3cg
d2hhdCB0bwo+ID4+Pj4gdGhpbmsgYWJvdXQgYW4gaXNzdWUgd2l0aCB1c2VyLT5ucl9tc2dzIGdv
aW5nIG5lZ2F0aXZlIGluIGlwbWlfbXNnaGFuZGxlci5jLgo+ID4+Pj4gTm90IHN1cmUgaWYgaXQn
cyBhIHdlYWtuZXNzIGluIGlwbWlfbXNnaGFuZGxlci5jIG9yIGEgYnVnIGluIHRoZSBJUE1DIHNv
ZnR3YXJlCj4gPj4+PiBvZiBvdXIgY29tcHV0ZXIgYm9hcmQgKHNhdGVsbGl0ZSkgd2l0aCBldmVu
dCBtZXNzYWdlcy4KPiA+Pj4gSSB3b3JrZWQgd2l0aCBwZW9wbGUgZnJvbSBLb250cm9uIGEgbG9u
ZyB0aW1lIGFnby4gIFRob3NlIHdlcmUgZ29vZAo+ID4+PiB0aW1lcyA6KS4KPiA+Pj4KPiA+Pj4+
IEkgc2VlIHRoaXMgd2hlbiBJIHJ1biBpcG1pdG9vbCBvbiB0aGlzIGJvYXJkIHdoaWxlIHNvbWUg
ZXZlbnQgbWVzc2FnZXMgYWxyZWFkeQo+ID4+Pj4gYXZhaWxhYmxlLiBJbiB0aGlzIGNhc2UgZGVs
aXZlcl9yZXNwb25zZSgpIGlzIHByb2Nlc3NpbmcgdGhlIG1lc3NhZ2VzIGFuZCBpcwo+ID4+Pj4g
ZGVjcmVhc2luZyB1c2VyLT5ucl9tc2dzIGJlbG93IDAuIFRoZW4gd2hlbiBpcG1pdG9vbCBjYWxs
cwo+ID4+Pj4gaW9jdGwoSVBNSUNUTF9TRU5EX0NPTU1BTkQpIGl0IGdldHMgYW4gZXJyb3Igd2l0
aCBlcnJubz1FQlVTWSBiZWNhdXNlIGluCj4gPj4+PiBpX2lwbWlfcmVxdWVzdCgpIHVzZXItPm5y
X21zZ3MgaXMgaW5jcmVtZW50ZWQgYnV0IHN0aWxsIG5lZ2F0aXZlLCBjYXN0ZWQgdG8KPiA+Pj4+
IHVuc2lnbmVkIGludCBzbyBiZWNvbWVzIGh1Z2UsIGFuZCBmb3VuZCBncmVhdGVyIHRoYW4gbWF4
X21zZ3NfcGVyX3VzZXIgKDEwMCkuCj4gPj4+IFRoYW5rcyBmb3IgdGhlIGRldGFpbGVkIGRlc2Ny
aXB0aW9uLiAgVGhlIGZpeCBmb3IgdGhlIGJ1ZyBpczoKPiA+Pj4KPiA+Pj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfbXNnaGFuZGxlci5jIGIvZHJpdmVycy9jaGFyL2lwbWkv
aXBtaV9tc2doYW5kbGVyLmMKPiA+Pj4gaW5kZXggZTEyYjUzMWY1YzJmLi5iYTMzMDcwNjIyYjEg
MTAwNjQ0Cj4gPj4+IC0tLSBhL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfbXNnaGFuZGxlci5jCj4g
Pj4+ICsrKyBiL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfbXNnaGFuZGxlci5jCj4gPj4+IEBAIC0x
NjM0LDYgKzE2MzQsNyBAQCBpbnQgaXBtaV9zZXRfZ2V0c19ldmVudHMoc3RydWN0IGlwbWlfdXNl
ciAqdXNlciwgYm9vbCB2YWwpCj4gPj4+Cj4gPj4+ICAgICAgICAgICAgICAgICBsaXN0X2Zvcl9l
YWNoX2VudHJ5X3NhZmUobXNnLCBtc2cyLCAmbXNncywgbGluaykgewo+ID4+PiAgICAgICAgICAg
ICAgICAgICAgICAgICBtc2ctPnVzZXIgPSB1c2VyOwo+ID4+PiArICAgICAgICAgICAgICAgICAg
ICAgICBhdG9taWNfYWRkKDEsICZ1c3ItPm5yX21zZ3MpOwo+ID4+IFNvcnJ5LCB0aGF0IHNob3Vs
ZCBvYnZpb3VzbHkgYmUgdXNlci0+bnJfbXNncwo+ID4gVGhhbmtzIHZlcnkgbXVjaCAhCj4gPiBJ
J3ZlIHRyaWVkIGl0IHdpdGgga2VybmVsIDYuMTEuOCBhbmQgaXQncyBiZXR0ZXIgYnV0IHN0aWxs
IG5vdCBlbm91Z2guCj4gPiBSdW5uaW5nICJpcG1pdG9vbCBzZW5zb3IiIHdpdGggc29tZSBkZWJ1
ZyBpbiBpcG1pX21zZ2hhbmRsZXIuYyBzaG93cyB0aGF0IEkgYWx3YXlzIGhhdmUgbnJfbXNncz0x
IHJpZ2h0IGFmdGVyIHRoZSBhdG9taWNfYWRkIChjYWxsZWQKPiA+IDkgdGltZXMpLCB0aGVuIHdo
ZW4gaW4gaV9pcG1pX3JlcXVlc3QoKSBJIHJlYWNoIGxpbmUgInJ2ID0gLUVCVVNZOyIgd2l0aCBu
cl9tc2dzPS0yICh0d2ljZSkuCj4gTXkgdW5kZXJzdGFuZGluZyBpcyB0aGF0IGlwbWl0b29sIGNh
bGxzIGlvY3RsKElQTUlDVExfU0VUX0dFVFNfRVZFTlRTX0NNRCkgY2FsbGluZyBpcG1pX3NldF9n
ZXRzX2V2ZW50cygpIGFuZCB0aGFua3MgdG8geW91ciBwYXRjaAo+IGZvciBlYWNoIGV2ZW50IGF2
YWlsYWJsZSB0aGUgbnJfbXNncyBpcyBpbmNyZW1lbnRlZCBoZXJlIGFuZCBkZWNyZW1lbnRlZCBp
biBkZWxpdmVyX3Jlc3BvbnNlKCkuIFNvIHlvdXIgcGF0Y2ggaXMgT0sgZm9yIHRoYXQuCj4gQnV0
IGFmdGVyIHRoYXQgaWYgb3RoZXIgZXZlbnRzIGFyZSBjb21pbmcsIGRlbGl2ZXJfcmVzcG9uc2Uo
KSBpcyBjYWxsZWQgYW5kIG5yX21zZ3MgZ2V0cyBkZWNyZW1lbnRlZC4gU28gd2hlbiBpcG1pdG9v
bCBjYWxscwo+IGlvY3RsKElQTUlDVExfU0VORF9DT01NQU5EKSwgdGhpcyBjYWxscyBpX2lwbWlf
cmVxdWVzdCgpIHdpdGggbnJfbXNncyA8IDAgYW5kIHRoYXQgcmV0dXJucyAtRUJVU1kKCgpZZWFo
LCBhZnRlciBJIHNlbnQgbXkgZW1haWwgSSBzdGFydGVkIGxvb2tpbmcgdGhyb3VnaCB0aGUgZHJp
dmVyIGZvcgpvdGhlciBpc3N1ZXMgYXJvdW5kIHRoaXMsIGFuZCB0aGVyZSB3ZXJlIHNldmVyYWwu
ICBUaGF0IGNoYW5nZSB3YXNuJ3QKd2VsbCB0aG91Z2h0IHRocm91Z2guCgpTbywgSSd2ZSBhZGRl
ZCBzb21lIHRlc3RzIGFyb3VuZCB0aGlzIGluIG15IHRlc3Qgc3VpdGUsIGFuZCBJJ3ZlCnJld29y
a2VkIHRoaXMgdG8gYmUgYSBtdWNoIGJldHRlciBpbXBsZW1lbnRhdGlvbiB0aGF0J3MgaGFyZGVy
IHRvIGdldAp3cm9uZy4KCkknbSBnb2luZyB0byBzZW5kIHRoZSBmaXggaW4gYSBzZXBhcmF0ZSBl
bWFpbC4KClRoYW5rcywKCi1jb3JleQoKPiA+Pj4gICAgICAgICAgICAgICAgICAgICAgICAga3Jl
Zl9nZXQoJnVzZXItPnJlZmNvdW50KTsKPiA+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgZGVs
aXZlcl9sb2NhbF9yZXNwb25zZShpbnRmLCBtc2cpOwo+ID4+PiAgICAgICAgICAgICAgICAgfQo+
ID4+Pgo+ID4+Pgo+ID4+PiBDYW4geW91IHRyeSB0aGF0IG91dD8KPiA+Pj4KPiA+Pj4gSSdsbCBm
b3J3YXJkIHBvcnQgdGhpcyB0byBjdXJyZW50IGtlcm5lbCAoaWYgYXBwcm9wcmlhdGUsIHRoaXMg
aGFzIGFsbAo+ID4+PiBiZWVuIHJld3JpdHRlbikgYW5kIHJlcXVpcmVkIGEgYmFja3BvcnQuCj4g
Pj4+Cj4gPj4+IFRoYW5rcywKPiA+Pj4KPiA+Pj4gLWNvcmV5Cj4gPj4+Cj4gPj4+PiBBcyB3b3Jr
YXJvdW5kIEkgc2V0IG1vZHVsZSBwYXJhbWV0ZXIgbWF4X21zZ3NfcGVyX3VzZXIgdG8gMHhmZmZm
ZmZmZiBzbyB0aGF0Cj4gPj4+PiB1c2VyLT5ucl9tc2dzIGlzIG5ldmVyIGdyZWF0ZXIgdGhhbiB0
aGlzIHZhbHVlLgo+ID4+Pj4gSSB3YXMgdXNpbmcga2VybmVsIDYuMTEuOCBidXQgdXBkYXRlZCB0
byA2LjE2LjMgYW5kIGdldCB0aGUgc2FtZSBpc3N1ZS4KPiA+Pj4+IEknbSBhbHNvIG5vdCBzdXJl
IGlmIG91ciBib2FyZCBpcyBzdXBwb3NlZCB0byByZWNlaXZlIHN1Y2ggZXZlbnQgbWVzc2FnZXMg
YXMKPiA+Pj4+IGl0IGlzIG5vdCBTaGVsZiBNYW5hZ2VyLCBldmVuIGlmIHRoZXNlIGV2ZW50cyBj
b21lIGZyb20gdGhlIGxvY2FsIHNlbnNvcnMgb2YKPiA+Pj4+IHRoZSBib2FyZC4KPiA+Pj4+Cj4g
Pj4+PiBCZXN0IHJlZ2FyZHMKPiA+Pj4+Cj4gPj4+PiBHaWxsZXMgQnVsb3oKPiA+Pj4+IEtvbnRy
b24gTW9kdWxhciBDb21wdXRlcnMgRnJhbmNlCj4gPj4+PiBSJkQgU1cvSFcgc2VuaW9yIGRldmVs
b3Blcgo+ID4+Pj4KPiA+PiAuCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1k
ZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2Uu
bmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
