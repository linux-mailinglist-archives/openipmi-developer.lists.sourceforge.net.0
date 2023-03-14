Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B62A36B985D
	for <lists+openipmi-developer@lfdr.de>; Tue, 14 Mar 2023 15:54:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pc62f-0006HB-9f;
	Tue, 14 Mar 2023 14:54:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1pc62d-0006Gx-Ke
 for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Mar 2023 14:54:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=icH102aAtRdzyYI6Wgr5Q8zYJb/mClsHMinI2zu33TA=; b=BNKow+VVEYL1vL1GDmQtbjx/2w
 9NpZHtBq2VzkG3PRbjc9Is538M8VRYwDxKURCfL4WEOSzDDYhhnqa4QMn7wulCQ4VKMxKCN8Va2S4
 5d9VvITSXDDJ3a41CQ3j6FoUQvBmMzp9r/PAx78qMixGByBvYcboAc9YhKiAv7dFv7w8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=icH102aAtRdzyYI6Wgr5Q8zYJb/mClsHMinI2zu33TA=; b=fnMgueBlil9WOt26LTEDr29ViQ
 zHef+P4Z6bS+T8fe8d0XiFjGVmhJY8JEPYDrjcw2opzqXkBcm8TPToaCQDVdHcsrRJww4N83PN+GT
 RkEjJ+NewryWX7RhyXQ1nLmKT1Dnlk3nCtiDTq18RJRxXDfUYPW4NKLuOrQH6tnk2/ts=;
Received: from mail-oa1-f54.google.com ([209.85.160.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pc62a-008Tkp-S7 for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Mar 2023 14:54:20 +0000
Received: by mail-oa1-f54.google.com with SMTP id
 586e51a60fabf-177ca271cb8so5021394fac.2
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 14 Mar 2023 07:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678805651;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:from:to:cc:subject:date:message-id:reply-to;
 bh=icH102aAtRdzyYI6Wgr5Q8zYJb/mClsHMinI2zu33TA=;
 b=Shmyq2yUda5dxMYRcVwwpl4oYIMrSNa+ihSp8S8Fxq6TgwxVm5sdbciWmWG7IRn+9/
 wIjoWUJBkg0+x3Vr1evhwXWVa45kUPazROpi854+/zv60GY9RdZJMjoAIXebWs9uGlH0
 qnz1wqVg7nzZbi/j8kiUf5eJnZO3cShX0KIxm3PHcznejlE+GxxsX038lOd+j1DxwMi9
 X7l+FQdcLrj2Sc4kOOEGv4BOe+aVQ6oAyNdi+n+B27y5/pVbS1/bAhq2Ud0xvtPngx/j
 Etfr2pKbnZJfgHmTjTNQTe8TIpgo31yGTh95d2+YnsrdSzShx5Uj0pf8kF7RxXQRh3SG
 G97w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678805651;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=icH102aAtRdzyYI6Wgr5Q8zYJb/mClsHMinI2zu33TA=;
 b=ahZ9en9CpMY+WSZ0wJY6ZO+SJM4874+wFA67NgPqvbC4/RaUNa9KWRM2L+w9htvJ/W
 bRGUzYm4nx7AjDN5A0dJGx5Np5tuo5Q9lV5sy0X0ntCAamKrFP2VYe6jkUauM2sbi2HA
 /IHgycbkZ3b+tSI+MOGQZ38HNV41bSA5SQxNxwtvui0nukN/IeGuRsqhyn37DHGYotvf
 FdZhjwW5UtCjuFl8SbCB6sG4dm1GGn1jP0eRV3ulSkXELh/EDID3AVAQBO8w8NvWkVj9
 eWtHnYG25FO3XNkQZgPJ44idTw6JGxksCwqBDz1MFKSToNYyxC692AMpah/7KLQEgdmg
 WSsg==
X-Gm-Message-State: AO0yUKWK4Qog/2nqDOjCUd9HgkWQUJrsk4irkEWG7SlRa+zvPIOOOyq9
 GpXwTB/P9jzPbeQ5SDb+lZ5RcnhQ9g==
X-Google-Smtp-Source: AK7set8M3LAj0T7uBM5BH13vO1OOhaskQQP2cSuQ1EXYG9L2sSAJg0Oe9DaNDuzvg4cvFlvPQ81wuA==
X-Received: by 2002:a05:6870:63ac:b0:177:9964:1f10 with SMTP id
 t44-20020a05687063ac00b0017799641f10mr7655936oap.13.1678805651013; 
 Tue, 14 Mar 2023 07:54:11 -0700 (PDT)
Received: from serve.minyard.net ([47.184.176.248])
 by smtp.gmail.com with ESMTPSA id
 h39-20020a056870172700b0016e8726f0d4sm1191588oae.3.2023.03.14.07.54.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Mar 2023 07:54:10 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:d290:38d8:4c6f:34f2])
 by serve.minyard.net (Postfix) with ESMTPSA id BA272180044;
 Tue, 14 Mar 2023 14:54:09 +0000 (UTC)
Date: Tue, 14 Mar 2023 09:54:08 -0500
From: Corey Minyard <minyard@acm.org>
To: Christian Theune <ct@flyingcircus.io>
Message-ID: <ZBCKkEtvPbVKBaYy@minyard.net>
References: <ZA9CR6nLtHqav2Lc@minyard.net>
 <5814DED7-2C7F-4B40-9B97-AACD54DC5408@flyingcircus.io>
 <7B86181E-6DA6-4D91-9BEB-5102C161A32F@flyingcircus.io>
 <ZA9ZsPiPH9x2lPrG@minyard.net>
 <7A542D45-B87F-49B6-B092-4B8DCA5D6DB1@flyingcircus.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7A542D45-B87F-49B6-B092-4B8DCA5D6DB1@flyingcircus.io>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Mar 14, 2023 at 03:22:39PM +0100, Christian Theune
    via Openipmi-developer wrote: > Hi, > > sorry, I didn’t expect you to make
    me a branch. I had already taken your diff over to 5.10 as it ap [...] 
 
 Content analysis details:   (0.4 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.160.54 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.160.54 listed in list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1pc62a-008Tkp-S7
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
Cc: Christian Theune via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVHVlLCBNYXIgMTQsIDIwMjMgYXQgMDM6MjI6MzlQTSArMDEwMCwgQ2hyaXN0aWFuIFRoZXVu
ZSB2aWEgT3BlbmlwbWktZGV2ZWxvcGVyIHdyb3RlOgo+IEhpLAo+IAo+IHNvcnJ5LCBJIGRpZG7i
gJl0IGV4cGVjdCB5b3UgdG8gbWFrZSBtZSBhIGJyYW5jaC4gSSBoYWQgYWxyZWFkeSB0YWtlbiB5
b3VyIGRpZmYgb3ZlciB0byA1LjEwIGFzIGl0IGFwcGxpZWQgY2xlYW5seSDigKYgc29ycnkgZm9y
IHRoZSBhZGRpdGlvbmFsIHdvcmsgYW5kIHRoYW5rcyBhbnl3YXlzLgoKT2ssIHRoYXQncyBncmVh
dC4gIEl0J3Mgc29tZXRoaW5nIGFib3V0IHRoZSBJUE1JIHdhdGNoZG9nIHBhbmljCnJvdXRpbmVz
LCBhbmQgSSBjYW4gcmVwcm9kdWNlLiAgSSBzaG91bGQgYmUgYWJsZSB0byBmaXggdGhpcyBwcmV0
dHkKcXVpY2tseS4gIEknbGwgc2VuZCBhIHBhdGNoIHdoZW4gSSBnZXQgdGhpcyBmaXhlZC4KClRo
YW5rcywKCi1jb3JleQoKPiAKPiBIZXJl4oCZcyB0aGUgb3V0cHV0Ogo+IAo+IFsgNjUyMS45MDU4
OTBdIHN5c3JxOiBUcmlnZ2VyIGEgY3Jhc2gKPiBbIDY1MjEuOTA5Mjk0XSBLZXJuZWwgcGFuaWMg
LSBub3Qgc3luY2luZzogc3lzcnEgdHJpZ2dlcmVkIGNyYXNoCj4gWyA2NTIxLjkxNTAyNl0gQ1BV
OiAxIFBJRDogNDM3ODUgQ29tbTogYmFzaCBUYWludGVkOiBHICAgICAgICAgIEkgICAgICAgNS4x
MC4xNTkgIzEtTml4T1MKPiBbIDY1MjEuOTIyOTI1XSBIYXJkd2FyZSBuYW1lOiBEZWxsIEluYy4g
UG93ZXJFZGdlIFI1MTAvMDBIRFAwLCBCSU9TIDEuMTEuMCAwNy8yMy8yMDEyCj4gWyA2NTIxLjkz
MDQ3NV0gQ2FsbCBUcmFjZToKPiBbIDY1MjEuOTMyOTIzXSAgZHVtcF9zdGFjaysweDZiLzB4ODMK
PiBbIDY1MjEuOTM2MjMwXSAgcGFuaWMrMHgxMDEvMHgyYzgKPiBbIDY1MjEuOTM5Mjc2XSAgPyBw
cmludGsrMHg1OC8weDczCj4gWyA2NTIxLjk0MjQwOF0gIHN5c3JxX2hhbmRsZV9jcmFzaCsweDE2
LzB4MjAKPiBbIDY1MjEuOTQ2NDA3XSAgX19oYW5kbGVfc3lzcnEuY29sZCsweDQzLzB4MTFhCj4g
WyA2NTIxLjk1MDU4MF0gIHdyaXRlX3N5c3JxX3RyaWdnZXIrMHgyNC8weDQwCj4gWyA2NTIxLjk1
NDY2OF0gIHByb2NfcmVnX3dyaXRlKzB4NTEvMHg5MAo+IFsgNjUyMS45NTgzMjJdICB2ZnNfd3Jp
dGUrMHhjMy8weDI4MAo+IFsgNjUyMS45NjE2MjddICBrc3lzX3dyaXRlKzB4NWYvMHhlMAo+IFsg
NjUyMS45NjQ5MzVdICBkb19zeXNjYWxsXzY0KzB4MzMvMHg0MAo+IFsgNjUyMS45Njg1MDJdICBl
bnRyeV9TWVNDQUxMXzY0X2FmdGVyX2h3ZnJhbWUrMHg2MS8weGM2Cj4gWyA2NTIxLjk3MzU0MF0g
UklQOiAwMDMzOjB4N2YyYzZiOTFhMTMzCj4gWyA2NTIxLjk3NzEwNl0gQ29kZTogMGMgMDAgZjcg
ZDggNjQgODkgMDIgNDggYzcgYzAgZmYgZmYgZmYgZmYgZWIgYjMgMGYgMWYgODAgMDAgMDAgMDAg
MDAgNjQgOGIgMDQgMjUgMTggMDAgMDAgMDAgODUgYzAgNzUgMTQgYjggMDEgMDAgMDAgMDAgMGYg
MDUgPDQ4PiAzZCAwMCBmMCBmZiBmZiA3NyA1NSBjMyAwZiAxZiA0MCAwMCA0MSA1NCA0OSA4OSBk
NCA1NSA0OCA4OSBmNQo+IFsgNjUyMS45OTU4MzZdIFJTUDogMDAyYjowMDAwN2ZmYzRjZjExMDg4
IEVGTEFHUzogMDAwMDAyNDYgT1JJR19SQVg6IDAwMDAwMDAwMDAwMDAwMDEKPiBbIDY1MjIuMDAz
Mzg3XSBSQVg6IGZmZmZmZmZmZmZmZmZmZGEgUkJYOiAwMDAwMDAwMDAwMDAwMDAyIFJDWDogMDAw
MDdmMmM2YjkxYTEzMwo+IFsgNjUyMi4wMTA1MDVdIFJEWDogMDAwMDAwMDAwMDAwMDAwMiBSU0k6
IDAwMDAwMDAwMDE1NTVjMDggUkRJOiAwMDAwMDAwMDAwMDAwMDAxCj4gWyA2NTIyLjAxNzYyM10g
UkJQOiAwMDAwMDAwMDAxNTU1YzA4IFIwODogMDAwMDAwMDAwMDAwMDAwYSBSMDk6IDAwMDA3ZjJj
NmI5YWFmNDAKPiBbIDY1MjIuMDI0NzQzXSBSMTA6IDAwMDAwMDAwMDE2ZTQyMTggUjExOiAwMDAw
MDAwMDAwMDAwMjQ2IFIxMjogMDAwMDAwMDAwMDAwMDAwMgo+IFsgNjUyMi4wMzE4NjRdIFIxMzog
MDAwMDdmMmM2YjllODUyMCBSMTQ6IDAwMDA3ZjJjNmI5ZTg3MjAgUjE1OiAwMDAwMDAwMDAwMDAw
MDAyCj4gWyA2NTIyLjAzOTA4NV0gQ2FsbGluZyBub3RpZmllciBwYW5pY19ldmVudCsweDAvMHg0
MTAgW2lwbWlfbXNnaGFuZGxlcl0gKDAwMDAwMDAwOGViOGNiNDQpCj4gWyA2NTIyLjA0NzA3MV0g
SVBNSSBtZXNzYWdlIGhhbmRsZXI6IElQTUk6IHBhbmljIGV2ZW50IGhhbmRsZXIKPiBbIDY1MjIu
MDUyNjI4XSBJUE1JIG1lc3NhZ2UgaGFuZGxlcjogSVBNSTogaGFuZGxpbmcgcGFuaWMgZXZlbnQg
Zm9yIGludGYgMDogMDAwMDAwMDA0NDM3NzdiMyAwMDAwMDAwMDY3ZDA1ZmY4Cj4g4oCmCj4gYW5k
IHRoZW4gaXQgcmVib290cyBhZnRlciB0aGUgMjU1IHNlY29uZHMgZnJvbSB0aGUgd2F0Y2hkb2cg
dGltZXIgYXJlIHBhc3NlZC4KPiAKPiBDaHJpc3RpYW4KPiAKPiA+IE9uIDEzLiBNYXIgMjAyMywg
YXQgMTg6MTMsIENvcmV5IE1pbnlhcmQgPG1pbnlhcmRAYWNtLm9yZz4gd3JvdGU6Cj4gPiAKPiA+
IE9uIE1vbiwgTWFyIDEzLCAyMDIzIGF0IDA1OjQyOjM5UE0gKzAxMDAsIENocmlzdGlhbiBUaGV1
bmUgd3JvdGU6Cj4gPj4gSHJnaHMuIEnigJltIGFwcGx5aW5nIHlvdXIgcGF0Y2ggdG8gNS4xMCBh
cyBteSBkaXN0cm8gYnVpbGQgaW5mcmFzdHJ1Y3R1cmUgaGFzIHNvbWUgcGF0Y2hlcyB0aGF0IGRv
buKAmXQgYXBwbHkgdG8gNi4yIGFuZCB0aGF0IEkgZG9u4oCZdCBrbm93IGhvdyB0byBjaXJjdW12
ZW50IHF1aWNrbHkgZW5vdWdo4oCmIDopCj4gPiAKPiA+IE9rLCB0aGVyZSdzIGEKPiA+IAo+ID4g
aHR0cHM6Ly9naXRodWIuY29tL2NtaW55YXJkL2xpbnV4LWlwbWkuZ2l0OmRlYnVnLXBhbmljLW9l
bS1ldmVudHMtNS4xMAo+ID4gCj4gPiBicmFuY2ggYXZhaWxhYmxlIGZvciB5b3UgdG8gcHVsbC4g
IEl0J3Mgb24gdG9wIG9mIGxhdGVzdCA1LjEwLgo+ID4gCj4gPiAtY29yZXkKPiA+IAo+ID4+IAo+
ID4+PiBPbiAxMy4gTWFyIDIwMjMsIGF0IDE2OjU5LCBDaHJpc3RpYW4gVGhldW5lIDxjdEBmbHlp
bmdjaXJjdXMuaW8+IHdyb3RlOgo+ID4+PiAKPiA+Pj4gSSBzaG91bGQgYmUgZWFzaWx5IGFibGUg
dG8gcnVuIDYuMiwgbm8gd29ycmllcy4KPiA+Pj4gCj4gPj4+IAo+ID4+Pj4gT24gMTMuIE1hciAy
MDIzLCBhdCAxNjozMywgQ29yZXkgTWlueWFyZCA8bWlueWFyZEBhY20ub3JnPiB3cm90ZToKPiA+
Pj4+IAo+ID4+Pj4g77u/T24gTW9uLCBNYXIgMTMsIDIwMjMgYXQgMDI6MDc6MDFQTSArMDEwMCwg
Q2hyaXN0aWFuIFRoZXVuZSB3cm90ZToKPiA+Pj4+PiBIaSwKPiA+Pj4+PiAKPiA+Pj4+PiB5ZWFo
LCB0aGUgSVBNSSBsb2cgaXMgZmluZS4gVGhpcyBpcyBhIDEwIG1pbnV0ZSBpbnRlcnZhbCBqb2Ig
aW4gb3VyIHN5c3RlbSB0aGF0IGV4cG9ydHMgdGhlIGxvZyBhbmQgY2xlYXJzIGl0Ogo+ID4+Pj4+
IAo+ID4+Pj4+IFRoZSBqb2IgbG9va3MgbGlrZSB0aGlzOgo+ID4+Pj4+IAo+ID4+Pj4+IC9uaXgv
c3RvcmUvbTdsYjM2ZHI5M3FqMjdyOXZza21qaWh6OGlteXd5ODYtaXBtaXRvb2wtMS44LjE4L2Jp
bi9pcG1pdG9vbCBzZWwgZWxpc3QKPiA+Pj4+PiAvbml4L3N0b3JlL203bGIzNmRyOTNxajI3cjl2
c2ttamloejhpbXl3eTg2LWlwbWl0b29sLTEuOC4xOC9iaW4vaXBtaXRvb2wgc2VsIGNsZWFyCj4g
Pj4+Pj4gCj4gPj4+Pj4gU28gaXTigJlzIG5vdCBhdG9taWMgYnV0IGl0IHJ1bnMgYWZ0ZXIgdGhl
IGJvb3QgYW5kIHRoZSBlbGlzdCBzaG91bGQgb3V0cHV0IGl0IHByb3Blcmx5IOKApiBhdCBsZWFz
dCBpdCBkaWQgaW4gdGhlIHBhc3QuIDspCj4gPj4+Pj4gCj4gPj4+Pj4gQXMgSSBzYWlkIC0gSeKA
mW0gaGFwcHkgdG8gcnVuIGFueSBwYXRjaGVzIHlvdSBoYXZlLiBJZiB5b3UgcG9pbnQgbWUgdG8g
YSBnaXQgYnJhbmNoIHNvbWV3aGVyZSBJIGNhbiBzd2l0Y2ggdGhhdCBzeXN0ZW0gZWFzaWx5Lgo+
ID4+Pj4gCj4gPj4+PiBPaywgSSBoYXZlIGEgYnJhbmNoIGF0Cj4gPj4+PiAKPiA+Pj4+IGh0dHBz
Oi8vZ2l0aHViLmNvbS9jbWlueWFyZC9saW51eC1pcG1pLmdpdDpkZWJ1Zy1wYW5pYy1vZW0tZXZl
bnRzCj4gPj4+PiAKPiA+Pj4+IHRoYXQgaGFzIGRlYnVnIHRyYWNpbmcuICBJdCB3aWxsIHByaW50
IHRoZSBmdW5jdGlvbiBmb3IgYWxsIHBhbmljIGV2ZW50Cj4gPj4+PiBoYW5kbGVycywgdGhlaXIg
cmV0dXJuIHZhbHVlcywgYW5kIGFkZHMgdHJhY2VzIGluIHRoZSBJUE1JIHBhbmljIGV2ZW50Cj4g
Pj4+PiBoYW5kbGVycy4KPiA+Pj4+IAo+ID4+Pj4gSXQncyBhIHNpbmdsZSBwYXRjaCByaWdodCBv
biB0b3Agb2YgNi4yOyBJJ20gbm90IHN1cmUgaG93IHBvcnRhYmxlIGl0IGlzCj4gPj4+PiB0byBv
dGhlciBrZXJuZWwgdmVyc2lvbnMuICBJIGNhbiBwb3J0IGlmIHlvdSBsaWtlLgo+ID4+Pj4gCj4g
Pj4+PiBUaGFua3MsCj4gPj4+PiAKPiA+Pj4+IC1jb3JleQo+ID4+Pj4gCj4gPj4+Pj4gCj4gPj4+
Pj4gQ2hlZXJzLAo+ID4+Pj4+IENocmlzdGlhbgo+ID4+Pj4+IAo+ID4+Pj4+Pj4gT24gMTMuIE1h
ciAyMDIzLCBhdCAxMzo1OCwgQ29yZXkgTWlueWFyZCA8bWlueWFyZEBhY20ub3JnPiB3cm90ZToK
PiA+Pj4+Pj4gCj4gPj4+Pj4+IE9uIE1vbiwgTWFyIDEzLCAyMDIzIGF0IDEwOjI3OjUxQU0gKzAx
MDAsIENocmlzdGlhbiBUaGV1bmUgd3JvdGU6Cj4gPj4+Pj4+PiBIaSwKPiA+Pj4+Pj4+IAo+ID4+
Pj4+Pj4gYWxyaWdodCwgc28gaGVyZeKAmXMgdGhlIG91dHB1dCBmcm9tIHRoZSBOaXhPUyBtYWNo
aW5lOgo+ID4+Pj4+Pj4gCj4gPj4+Pj4+PiByb290QHh4eCB+ICMgZWNobyBjID4vcHJvYy9zeXNy
cS10cmlnZ2VyCj4gPj4+Pj4+PiBjbGllbnRfbG9vcDogc2VuZCBkaXNjb25uZWN0OiBCcm9rZW4g
cGlwZQo+ID4+Pj4+Pj4g4oCmCj4gPj4+Pj4+PiAKPiA+Pj4+Pj4+IHJvb3RAeHh4IH4gIyBqb3Vy
bmFsY3RsIC11IGlwbWktbG9nLnNlcnZpY2UKPiA+Pj4+Pj4+IC0tIEpvdXJuYWwgYmVnaW5zIGF0
IFN1biAyMDIzLTAyLTI2IDE0OjI1OjM2IENFVCwgZW5kcyBhdCBNb24gMjAyMy0wMy0xMyAxMDoy
NToyNyBDRVQuIC0tCj4gPj4+Pj4+PiBNYXIgMTMgMTA6MTI6MzggeHh4IGlwbWktbG9nLXN0YXJ0
WzUyMDk3M106IENsZWFyaW5nIFNFTC4gIFBsZWFzZSBhbGxvdyBhIGZldyBzZWNvbmRzIHRvIGVy
YXNlLgo+ID4+Pj4+Pj4gLi4uCj4gPj4+Pj4+PiAtLSBCb290IGZkZWY0OTZlNzg0ZTQ1NDFhYmQ5
YWU0MGRmNDcyYTBiIC0tCj4gPj4+Pj4+PiBNYXIgMTMgMTA6MjU6MDcgeHh4IGlwbWktbG9nLXN0
YXJ0WzE5NzNdOiAgICAxIHwgMDMvMTMvMjAyMyB8IDA5OjEyOjQ5IHwgRXZlbnQgTG9nZ2luZyBE
aXNhYmxlZCBTRUwgfCBMb2cgYXJlYSByZXNldC9jbGVhcmVkIHwgQXNzZXJ0ZWQKPiA+Pj4+Pj4+
IE1hciAxMyAxMDoyNTowNyB4eHggaXBtaS1sb2ctc3RhcnRbMTk3M106ICAgIDIgfCAwMy8xMy8y
MDIzIHwgMDk6MjE6MDYgfCBXYXRjaGRvZzIgT1MgV2F0Y2hkb2cgfCBIYXJkIHJlc2V0IHwgQXNz
ZXJ0ZWQKPiA+Pj4+Pj4+IE1hciAxMyAxMDoyNTowNyB4eHggaXBtaS1sb2ctc3RhcnRbMTk3N106
IENsZWFyaW5nIFNFTC4gIFBsZWFzZSBhbGxvdyBhIGZldyBzZWNvbmRzIHRvIGVyYXNlLgo+ID4+
Pj4+PiAKPiA+Pj4+Pj4gSG1tLCB0aGUgU0VMIGdvdCBjbGVhcmVkLiAgVGhhdCB3b3VsZCBjbGVh
ciBvdXQgYW55IG9mIHRoZSBsb2dzIHRoYXQKPiA+Pj4+Pj4gd2VyZSBpc3N1ZWQgYmVmb3JlIHRo
YXQgdGltZS4gIEknbSBub3Qgc3VyZSB3aGVuIHRoZSBhYm92ZSBoYXBwZW5lZAo+ID4+Pj4+PiB2
ZXJzZXMgdGhlIGNyYXNoLCB0aG91Z2guICBJdCBsb29rcyBsaWtlIGl0IG9jY3VycmVkIGFzIHBh
cnQgb2YgdGhlCj4gPj4+Pj4+IHJlYm9vdCwgYnV0IEknbSBub3Qgc3VyZSB3aGF0IEknbSBzZWVp
bmcuICBNYXliZSB5b3UgaGF2ZSBhIHN0YXJ0dXAKPiA+Pj4+Pj4gcHJvY2VzcyB0aGF0IGNsZWFy
cyB0aGUgU0VMPwo+ID4+Pj4+PiAKPiA+Pj4+Pj4gQXNzdW1pbmcgdGhhdCdzIG5vdCB0aGUgaXNz
dWUsIHdoYXQgeW91IGhhdmUgbG9va3Mgb2suICBJJ2QgbmVlZCB0byBhZGQKPiA+Pj4+Pj4gc29t
ZSBsb2dzIHRvIHRoZSBrZXJuZWwgdG8gc2VlIGlmIHRoZSBsb2cgb3BlcmF0aW9uIGV2ZXIgaGFw
cGVucy4KPiA+Pj4+Pj4gCj4gPj4+Pj4+IC1jb3JleQo+ID4+Pj4+PiAKPiA+Pj4+Pj4+IAo+ID4+
Pj4+Pj4gVGhlIFNPTCBsb2cgbG9va3MgbGlrZSB0aGlzOgo+ID4+Pj4+Pj4gCj4gPj4+Pj4+PiAK
PiA+Pj4+Pj4+IFsxMTA3NTg1LjkxNzY4OV0gc3lzcnE6IFRyaWdnZXIgYSBjcmFzaAo+ID4+Pj4+
Pj4gWzExMDc1ODUuOTIxMjcyXSBLZXJuZWwgcGFuaWMgLSBub3Qgc3luY2luZzogc3lzcnEgdHJp
Z2dlcmVkIGNyYXNoCj4gPj4+Pj4+PiBbMTEwNzU4NS45MjcxNzhdIENQVTogMSBQSUQ6IDUyMTAz
MyBDb21tOiBiYXNoIFRhaW50ZWQ6IEcgICAgICAgICAgSSAgICAgICA1LjEwLjE1OSAjMS1OaXhP
Uwo+ID4+Pj4+Pj4gWzExMDc1ODUuOTM1MzM1XSBIYXJkd2FyZSBuYW1lOiBEZWxsIEluYy4gUG93
ZXJFZGdlIFI1MTAvMDBIRFAwLCBCSU9TIDEuMTEuMCAwNy8yMy8yMDEyCj4gPj4+Pj4+PiBbMTEw
NzU4NS45NDMwNThdIENhbGwgVHJhY2U6Cj4gPj4+Pj4+PiBbMTEwNzU4NS45NDU2ODBdICBkdW1w
X3N0YWNrKzB4NmIvMHg4Mwo+ID4+Pj4+Pj4gWzExMDc1ODUuOTQ5MTU4XSAgcGFuaWMrMHgxMDEv
MHgyYzgKPiA+Pj4+Pj4+IFsxMTA3NTg1Ljk1MjM3OV0gID8gcHJpbnRrKzB4NTgvMHg3Mwo+ID4+
Pj4+Pj4gWzExMDc1ODUuOTU1Njg3XSAgc3lzcnFfaGFuZGxlX2NyYXNoKzB4MTYvMHgyMAo+ID4+
Pj4+Pj4gWzExMDc1ODUuOTU5ODU5XSAgX19oYW5kbGVfc3lzcnEuY29sZCsweDQzLzB4MTFhCj4g
Pj4+Pj4+PiBbMTEwNzU4NS45NjQyMDNdICB3cml0ZV9zeXNycV90cmlnZ2VyKzB4MjQvMHg0MAo+
ID4+Pj4+Pj4gWzExMDc1ODUuOTY4NDYzXSAgcHJvY19yZWdfd3JpdGUrMHg1MS8weDkwCj4gPj4+
Pj4+PiBbMTEwNzU4NS45NzIyOTBdICB2ZnNfd3JpdGUrMHhjMy8weDI4MAo+ID4+Pj4+Pj4gWzEx
MDc1ODUuOTc1NzY4XSAga3N5c193cml0ZSsweDVmLzB4ZTAKPiA+Pj4+Pj4+IFsxMTA3NTg1Ljk3
OTI0OF0gIGRvX3N5c2NhbGxfNjQrMHgzMy8weDQwCj4gPj4+Pj4+PiBbMTEwNzU4NS45ODI5ODdd
ICBlbnRyeV9TWVNDQUxMXzY0X2FmdGVyX2h3ZnJhbWUrMHg2MS8weGM2Cj4gPj4+Pj4+PiBbMTEw
NzU4NS45ODgxOTldIFJJUDogMDAzMzoweDdmNTg3MzkzMjEzMwo+ID4+Pj4+Pj4gWzExMDc1ODUu
OTkxOTM4XSBDb2RlOiAwYyAwMCBmNyBkOCA2NCA4OSAwMiA0OCBjNyBjMCBmZiBmZiBmZiBmZiBl
YiBiMyAwZiAxZiA4MCAwMCAwMCAwMCAwMCA2NCA4YiAwNCAyNSAxOCAwMCAwMCAwMCA4NSBjMCA3
NSAxNCBiOCAwMSAwMCAwMCAwMCAwZiAwNSA8NDg+IDNkIDAwIGYwIGZmIGZmIDc3IDU1IGMzIDBm
IDFmIDQwIDAwIDQxIDU0IDQ5IDg5IGQ0IDU1IDQ4IDg5IGY1Cj4gPj4+Pj4+PiBbMTEwNzU4Ni4w
MTA4NDJdIFJTUDogMDAyYjowMDAwN2ZmY2MxMzgwOGM4IEVGTEFHUzogMDAwMDAyNDYgT1JJR19S
QVg6IDAwMDAwMDAwMDAwMDAwMDEKPiA+Pj4+Pj4+IFsxMTA3NTg2LjAxODU2Nl0gUkFYOiBmZmZm
ZmZmZmZmZmZmZmRhIFJCWDogMDAwMDAwMDAwMDAwMDAwMiBSQ1g6IDAwMDA3ZjU4NzM5MzIxMzMK
PiA+Pj4+Pj4+IFsxMTA3NTg2LjAyNTkyM10gUkRYOiAwMDAwMDAwMDAwMDAwMDAyIFJTSTogMDAw
MDAwMDAwMDVjMWMwOCBSREk6IDAwMDAwMDAwMDAwMDAwMDEKPiA+Pj4+Pj4+IFsxMTA3NTg2LjAz
MzIxM10gUkJQOiAwMDAwMDAwMDAwNWMxYzA4IFIwODogMDAwMDAwMDAwMDAwMDAwYSBSMDk6IDAw
MDA3ZjU4NzM5YzJmNDAKPiA+Pj4+Pj4+IFsxMTA3NTg2LjA0MDUwNF0gUjEwOiAwMDAwMDAwMDAw
NWNjMzQ4IFIxMTogMDAwMDAwMDAwMDAwMDI0NiBSMTI6IDAwMDAwMDAwMDAwMDAwMDIKPiA+Pj4+
Pj4+IFsxMTA3NTg2LjA0Nzc5NF0gUjEzOiAwMDAwN2Y1ODczYTAwNTIwIFIxNDogMDAwMDdmNTg3
M2EwMDcyMCBSMTU6IDAwMDAwMDAwMDAwMDAwMDIKPiA+Pj4+Pj4+IAo+ID4+Pj4+Pj4gTm90aGlu
ZyBvYnZpb3VzIHRvIG1lIGhlcmUg4oCmIGlmIHlvdSBoYXZlIGFueSBmdXJ0aGVyIGlkZWFzIHdo
YXQgdG8gdGVzdCwgbGV0IG1lIGtub3cuIEkgc2hvdWxkIGJlIG1vcmUgcmVzcG9uc2l2ZSBhZ2Fp
biBub3cuCj4gPj4+Pj4+PiAKPiA+Pj4+Pj4+IFRoYW5rcyBhbmQga2luZCByZWdhcmRzLAo+ID4+
Pj4+Pj4gQ2hyaXN0aWFuCj4gPj4+Pj4+PiAKPiA+Pj4+Pj4+PiBPbiA1LiBNYXIgMjAyMywgYXQg
MjM6NTMsIENvcmV5IE1pbnlhcmQgPG1pbnlhcmRAYWNtLm9yZz4gd3JvdGU6Cj4gPj4+Pj4+Pj4g
Cj4gPj4+Pj4+Pj4gT24gV2VkLCBNYXIgMDEsIDIwMjMgYXQgMDY6MDA6MDdQTSArMDEwMCwgQ2hy
aXN0aWFuIFRoZXVuZSB3cm90ZToKPiA+Pj4+Pj4+Pj4gSeKAmW0gZ29pbmcgdG8gYWN0dWFsbHkg
YXR0YWNoIGEgc2VyaWFsIGNvbnNvbGUgdG8gd2F0Y2ggdGhlIOKAnGVjaG8gY+KAnSBwYW5pYywg
bWF5YmUgdGhhdCBnaXZlcyBfc29tZV8gaW5kaWNhdGlvbi4KPiA+Pj4+Pj4+Pj4gCj4gPj4+Pj4+
Pj4+IE90aGVyd2lzZTogSSBjYW4gcXVpY2tseSBydW4gcGF0Y2hlcyBvbiB0aGUga2VybmVsIHRo
ZXJlIHRvIHRyeSBvdXQgdGhpbmdzLiAoQW5kIHRoZSBmdW5kaW5nIG9mZmVyIHN0aWxsIHN0YW5k
cy4pCj4gPj4+Pj4+Pj4gCj4gPj4+Pj4+Pj4gQW55IG5ld3Mgb24gdGhpcz8gIEknbSBjdXJpb3Vz
IHdoYXQgdGhpcyBjb3VsZCBiZS4KPiA+Pj4+Pj4+PiAKPiA+Pj4+Pj4+PiAtY29yZXkKPiA+Pj4+
Pj4+PiAKPiA+Pj4+Pj4+Pj4gCj4gPj4+Pj4+Pj4+IENocmlzdGlhbgo+ID4+Pj4+Pj4+PiAKPiA+
Pj4+Pj4+Pj4+IE9uIDEuIE1hciAyMDIzLCBhdCAxNzo1OCwgQ29yZXkgTWlueWFyZCA8bWlueWFy
ZEBhY20ub3JnPiB3cm90ZToKPiA+Pj4+Pj4+Pj4+IAo+ID4+Pj4+Pj4+Pj4gT24gVHVlLCBGZWIg
MjgsIDIwMjMgYXQgMDY6MzY6MTdQTSArMDEwMCwgQ2hyaXN0aWFuIFRoZXVuZSB3cm90ZToKPiA+
Pj4+Pj4+Pj4+PiBUaGFua3MsIGJvdGggbWFjaGluZXMgcmVwb3J0Ogo+ID4+Pj4+Pj4+Pj4+IAo+
ID4+Pj4+Pj4+Pj4+ICMgY2F0IC9zeXMvbW9kdWxlL2lwbWlfbXNnaGFuZGxlci9wYXJhbWV0ZXJz
L3BhbmljX29wCj4gPj4+Pj4+Pj4+Pj4gc3RyaW5nCj4gPj4+Pj4+Pj4+PiAKPiA+Pj4+Pj4+Pj4+
IEF0IHRoaXMgcG9pbnQsIEkgaGF2ZSBubyBpZGVhLiAgSSdkIGhhdmUgdG8gc3RhcnQgYWRkaW5n
IHByaW50a3MgaW50bwo+ID4+Pj4+Pj4+Pj4gdGhlIGNvZGUgYW5kIGNhdXNlIGNyYXNoZXMgdG8g
c2VlIHdoYXQgaXMgaGFwcGluZy4KPiA+Pj4+Pj4+Pj4+IAo+ID4+Pj4+Pj4+Pj4gTWF5YmUgc29t
ZXRoaW5nIGlzIGdldHRpbmcgaW4gdGhlIHdheSBvZiB0aGUgcGFuaWMgbm90aWZpZXJzIGFuZCBk
b2luZwo+ID4+Pj4+Pj4+Pj4gc29tZXRoaW5nIHRvIHByZXZlbnQgdGhlIElQTUkgZHJpdmVyIGZy
b20gd29ya2luZy4KPiA+Pj4+Pj4+Pj4+IAo+ID4+Pj4+Pj4+Pj4gLWNvcmV5Cj4gPj4+Pj4+Pj4+
PiAKPiA+Pj4+Pj4+Pj4+PiAKPiA+Pj4+Pj4+Pj4+PiAKPiA+Pj4+Pj4+Pj4+Pj4gT24gMjguIEZl
YiAyMDIzLCBhdCAxODowNCwgQ29yZXkgTWlueWFyZCA8bWlueWFyZEBhY20ub3JnPiB3cm90ZToK
PiA+Pj4+Pj4+Pj4+Pj4gCj4gPj4+Pj4+Pj4+Pj4+IE9oLCBJIGZvcmdvdC4gIFlvdSBjYW4gbG9v
ayBhdCBwYW5pY19vcCBpbiAvc3lzL21vZHVsZS9pcG1pX21zZ2hhbmRsZXIvcGFyYW1ldGVycy9w
YW5pY19vcAo+ID4+Pj4+Pj4+Pj4+PiAKPiA+Pj4+Pj4+Pj4+Pj4gLWNvcmV5Cj4gPj4+Pj4+Pj4+
Pj4+IAo+ID4+Pj4+Pj4+Pj4+PiBPbiBUdWUsIEZlYiAyOCwgMjAyMyBhdCAwNTo0ODowN1BNICsw
MTAwLCBDaHJpc3RpYW4gVGhldW5lIHZpYSBPcGVuaXBtaS1kZXZlbG9wZXIgd3JvdGU6Cj4gPj4+
Pj4+Pj4+Pj4+PiBIaSwKPiA+Pj4+Pj4+Pj4+Pj4+IAo+ID4+Pj4+Pj4+Pj4+Pj4+IE9uIDI4LiBG
ZWIgMjAyMywgYXQgMTc6MzYsIENvcmV5IE1pbnlhcmQgPG1pbnlhcmRAYWNtLm9yZz4gd3JvdGU6
Cj4gPj4+Pj4+Pj4+Pj4+Pj4gCj4gPj4+Pj4+Pj4+Pj4+Pj4gT24gVHVlLCBGZWIgMjgsIDIwMjMg
YXQgMDI6NTM6MTJQTSArMDEwMCwgQ2hyaXN0aWFuIFRoZXVuZSB2aWEgT3BlbmlwbWktZGV2ZWxv
cGVyIHdyb3RlOgo+ID4+Pj4+Pj4+Pj4+Pj4+PiBIaSwKPiA+Pj4+Pj4+Pj4+Pj4+Pj4gCj4gPj4+
Pj4+Pj4+Pj4+Pj4+IEnigJl2ZSBiZWVuIHRyeWluZyB0byBkZWJ1ZyB0aGUgUEFOSUMgYW5kIE9F
TSBzdHJpbmcgaGFuZGxpbmcgYW5kIGFtIHJ1bm5pbmcgb3V0IG9mIGlkZWFzIHdoZXRoZXIgdGhp
cyBpcyBhIGJ1ZyBvciB3aGV0aGVyIHNvbWV0aGluZyBzbyBzdWJ0bGUgaGFzIGNoYW5nZWQgaW4g
bXkgY29uZmlnIHRoYXQgSeKAmW0ganVzdCBub3Qgc2VlaW5nIGl0Lgo+ID4+Pj4+Pj4+Pj4+Pj4+
PiAKPiA+Pj4+Pj4+Pj4+Pj4+Pj4gKE5vdGU6IEnigJltIHdpbGxpbmcgdG8gcGF5IGZvciBjb25z
dWx0aW5nLikKPiA+Pj4+Pj4+Pj4+Pj4+PiAKPiA+Pj4+Pj4+Pj4+Pj4+PiBQcm9iYWJseSBub3Qg
bmVjZXNzYXJ5Lgo+ID4+Pj4+Pj4+Pj4+Pj4gCj4gPj4+Pj4+Pj4+Pj4+PiBUaGFua3MhIFRoZSBv
ZmZlciBhbHdheXMgc3RhbmRzLiBJZiB3ZSBzaG91bGQgZXZlciBtZWV0IEnigJltIGFsc28gYWJs
ZSB0byBwYXkgaW4gYmV2ZXJhZ2VzLiA7KQo+ID4+Pj4+Pj4+Pj4+Pj4gCj4gPj4+Pj4+Pj4+Pj4+
Pj4+IEkgaGF2ZSBtYWNoaW5lcyB0aGF0IHdl4oCZdmUgbW92ZWQgZnJvbSBhbiBvbGRlciBzZXR1
cCAoR2VudG9vLCAobW9zdGx5KSB2YW5pbGxhIGtlcm5lbCA0LjE5LjE1NykgdG8gYSBuZXdlciBz
ZXR1cCAoTml4T1MsIChtb3N0bHkpIHZhbmlsbGEga2VybmVsIDUuMTAuMTU5KSBhbmQgSeKAmW0g
bm93IGV4cGVyaWVuY2luZyBjcmFzaGVzIHRoYXQgc2VlbSB0byBiZSBrZXJuZWwgcGFuaWNzIGJ1
dCBkbyBub3QgZ2V0IHRoZSB1c3VhbCBtZXNzYWdlcyBpbiB0aGUgSVBNSSBTRUwuCj4gPj4+Pj4+
Pj4+Pj4+Pj4gCj4gPj4+Pj4+Pj4+Pj4+Pj4gSSBqdXN0IHRlc3RlZCBvbiBzdG9jayA1LjEwLjE1
OSBhbmQgaXQgd29ya2VkIHdpdGhvdXQgaXNzdWUuICBFdmVyeXRoaW5nCj4gPj4+Pj4+Pj4+Pj4+
Pj4geW91IGhhdmUgYmVsb3cgbG9va3Mgb2suCj4gPj4+Pj4+Pj4+Pj4+Pj4gCj4gPj4+Pj4+Pj4+
Pj4+Pj4gQ2FuIHlvdSB0ZXN0IGJ5IGNhdXNpbmcgYSBjcmFzaCB3aXRoOgo+ID4+Pj4+Pj4+Pj4+
Pj4+IAo+ID4+Pj4+Pj4+Pj4+Pj4+IGVjaG8gYyA+L3Byb2Mvc3lzcnEtdHJpZ2dlcgo+ID4+Pj4+
Pj4+Pj4+Pj4+IAo+ID4+Pj4+Pj4+Pj4+Pj4+IGFuZCBzZWUgaWYgaXQgd29ya3M/Cj4gPj4+Pj4+
Pj4+Pj4+PiAKPiA+Pj4+Pj4+Pj4+Pj4+IFllYWgsIGFscmVhZHkgdHJpZWQgdGhhdCBhbmQgdW5m
b3J0dW5hdGVseSB0aGF0IF9kb2VzbuKAmXRfIHdvcmsuCj4gPj4+Pj4+Pj4+Pj4+PiAKPiA+Pj4+
Pj4+Pj4+Pj4+PiBJdCBzb3VuZHMgbGlrZSB5b3UgYXJlIGhhdmluZyBzb21lIHR5cGUgb2YgY3Jh
c2ggdGhhdCB5b3Ugd291bGQgbm9ybWFsbHkKPiA+Pj4+Pj4+Pj4+Pj4+PiB1c2UgdGhlIElQTUkg
bG9ncyB0byBkZWJ1Zy4gIEhvd2V2ZXIsIHRoZXkgYXJlbid0IHBlcmZlY3QsIHRoZSBzeXN0ZW0K
PiA+Pj4+Pj4+Pj4+Pj4+PiBoYXMgdG8gc3RheSB1cCBsb25nIGVub3VnaCB0byBnZXQgdGhlbSBp
bnRvIHRoZSBldmVudCBsb2cuCj4gPj4+Pj4+Pj4+Pj4+PiAKPiA+Pj4+Pj4+Pj4+Pj4+IEkgdGhp
bmsgdGhleSBhcmUgc3RheWluZyB1cCBsb25nIGVub3VnaCBiZWNhdXNlIGEgcGFuaWMgdHJpZ2dl
cnMgdGhlIDI1NSBzZWNvbmQgYnVtcCBpbiB0aGUgd2F0Y2hkb2cgYW5kIG9ubHkgdGhlbiBwYXNz
IG9uLiBIb3dldmVyLCBp4oCZdmUgYWxzbyBub3RpY2VkIHRoYXQgdGhlIGtlcm5lbCBfc2hvdWxk
XyBiZSByZWJvb3RpbmcgYWZ0ZXIgYSBwYW5pYyBtdWNoIGZhc3RlciAoYW5kIG5vdCByZWx5IG9u
IHRoZSB3YXRjaGRvZykgYW5kIHRoYXQgZG9lc27igJl0IGhhcHBlbiBlaXRoZXIuIChTb3JyeSB0
aGlzIGp1c3QgcG9wcGVkIGZyb20gdGhlIGJhY2sgb2YgbXkgaGVhZCkuCj4gPj4+Pj4+Pj4+Pj4+
PiAKPiA+Pj4+Pj4+Pj4+Pj4+PiBJbiB0aGlzIHNpdHVhdGlvbiwgZ2V0dGluZyBhIHNlcmlhbCBj
b25zb2xlIChwcm9iYWJseSB0aHJvdWdoIElQTUkKPiA+Pj4+Pj4+Pj4+Pj4+PiBTZXJpYWwgb3Zl
ciBMQU4pIGFuZCBnZXR0aW5nIHRoZSBjb25zb2xlIG91dHB1dCBvbiBhIGNyYXNoIGlzIHByb2Jh
Ymx5Cj4gPj4+Pj4+Pj4+Pj4+Pj4geW91ciBiZXN0IG9wdGlvbi4gIFlvdSBjYW4gdXNlIGlwbWl0
b29sIGZvciB0aGlzLCBvciBJIGhhdmUgYSBsaWJyYXJ5Cj4gPj4+Pj4+Pj4+Pj4+Pj4gdGhhdCBp
cyBhYmxlIHRvIG1ha2UgY29ubmVjdGlvbnMgdG8gc2VyaWFsIHBvcnRzLCBpbmNsdWRpbmcgdGhy
b3VnaCBJUE1JCj4gPj4+Pj4+Pj4+Pj4+Pj4gU29MLgo+ID4+Pj4+Pj4+Pj4+Pj4gCj4gPj4+Pj4+
Pj4+Pj4+PiBZdXAuIEJlZW4gdGhlcmUsIHRvby4gOikKPiA+Pj4+Pj4+Pj4+Pj4+IAo+ID4+Pj4+
Pj4+Pj4+Pj4gVW5mb3J0dW5hdGVseSB3ZeKAmXJlIGN1cnJlbnRseSBjaGFzaW5nIHNvbWV0aGlu
ZyB0aGF0IHBvcHMgdXAgdmVyeSByYW5kb21seSBvbiBzb21ld2hhdCBvZGQgbWFjaGluZXMgYW5k
IEkgYWxzbyBoYXZlIHRoZSBmZWVsaW5nIHRoYXQgaXTigJlzIHN5c3RlbWF0aWNhbGx5IGJyb2tl
biByaWdodCBub3cgKGFzIHRoZSDigJxlY2hvIGPigJ0gZG9lc27igJl0IHdvcmspLgo+ID4+Pj4+
Pj4+Pj4+Pj4gCj4gPj4+Pj4+Pj4+Pj4+PiBUaGFua3MgYSBsb3QsCj4gPj4+Pj4+Pj4+Pj4+PiBD
aHJpc3RpYW4KPiA+Pj4+Pj4+Pj4+Pj4+IAo+ID4+Pj4+Pj4+Pj4+Pj4gLS0gCj4gPj4+Pj4+Pj4+
Pj4+PiBDaHJpc3RpYW4gVGhldW5lIMK3IGN0QGZseWluZ2NpcmN1cy5pbyDCtyArNDkgMzQ1IDIx
OTQwMSAwCj4gPj4+Pj4+Pj4+Pj4+PiBGbHlpbmcgQ2lyY3VzIEludGVybmV0IE9wZXJhdGlvbnMg
R21iSCDCtyBodHRwczovL2ZseWluZ2NpcmN1cy5pbwo+ID4+Pj4+Pj4+Pj4+Pj4gTGVpcHppZ2Vy
IFN0ci4gNzAvNzEgwrcgMDYxMDggSGFsbGUgKFNhYWxlKSDCtyBEZXV0c2NobGFuZAo+ID4+Pj4+
Pj4+Pj4+Pj4gSFIgU3RlbmRhbCBIUkIgMjExNjkgwrcgR2VzY2jDpGZ0c2bDvGhyZXI6IENocmlz
dGlhbiBUaGV1bmUsIENocmlzdGlhbiBaYWdyb2RuaWNrCj4gPj4+Pj4+Pj4+Pj4+PiAKPiA+Pj4+
Pj4+Pj4+Pj4+IAo+ID4+Pj4+Pj4+Pj4+Pj4gCj4gPj4+Pj4+Pj4+Pj4+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+Pj4+Pj4+Pj4+Pj4gT3Blbmlw
bWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdAo+ID4+Pj4+Pj4+Pj4+Pj4gT3BlbmlwbWktZGV2ZWxv
cGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldAo+ID4+Pj4+Pj4+Pj4+Pj4gaHR0cHM6Ly9saXN0cy5z
b3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCj4gPj4+Pj4+
Pj4+Pj4gCj4gPj4+Pj4+Pj4+Pj4gTGllYmUgR3LDvMOfZSwKPiA+Pj4+Pj4+Pj4+PiBDaHJpc3Rp
YW4gVGhldW5lCj4gPj4+Pj4+Pj4+Pj4gCj4gPj4+Pj4+Pj4+Pj4gLS0gCj4gPj4+Pj4+Pj4+Pj4g
Q2hyaXN0aWFuIFRoZXVuZSDCtyBjdEBmbHlpbmdjaXJjdXMuaW8gwrcgKzQ5IDM0NSAyMTk0MDEg
MAo+ID4+Pj4+Pj4+Pj4+IEZseWluZyBDaXJjdXMgSW50ZXJuZXQgT3BlcmF0aW9ucyBHbWJIIMK3
IGh0dHBzOi8vZmx5aW5nY2lyY3VzLmlvCj4gPj4+Pj4+Pj4+Pj4gTGVpcHppZ2VyIFN0ci4gNzAv
NzEgwrcgMDYxMDggSGFsbGUgKFNhYWxlKSDCtyBEZXV0c2NobGFuZAo+ID4+Pj4+Pj4+Pj4+IEhS
IFN0ZW5kYWwgSFJCIDIxMTY5IMK3IEdlc2Now6RmdHNmw7xocmVyOiBDaHJpc3RpYW4gVGhldW5l
LCBDaHJpc3RpYW4gWmFncm9kbmljawo+ID4+Pj4+Pj4+Pj4+IAo+ID4+Pj4+Pj4+PiAKPiA+Pj4+
Pj4+Pj4gTGllYmUgR3LDvMOfZSwKPiA+Pj4+Pj4+Pj4gQ2hyaXN0aWFuIFRoZXVuZQo+ID4+Pj4+
Pj4+PiAKPiA+Pj4+Pj4+Pj4gLS0gCj4gPj4+Pj4+Pj4+IENocmlzdGlhbiBUaGV1bmUgwrcgY3RA
Zmx5aW5nY2lyY3VzLmlvIMK3ICs0OSAzNDUgMjE5NDAxIDAKPiA+Pj4+Pj4+Pj4gRmx5aW5nIENp
cmN1cyBJbnRlcm5ldCBPcGVyYXRpb25zIEdtYkggwrcgaHR0cHM6Ly9mbHlpbmdjaXJjdXMuaW8K
PiA+Pj4+Pj4+Pj4gTGVpcHppZ2VyIFN0ci4gNzAvNzEgwrcgMDYxMDggSGFsbGUgKFNhYWxlKSDC
tyBEZXV0c2NobGFuZAo+ID4+Pj4+Pj4+PiBIUiBTdGVuZGFsIEhSQiAyMTE2OSDCtyBHZXNjaMOk
ZnRzZsO8aHJlcjogQ2hyaXN0aWFuIFRoZXVuZSwgQ2hyaXN0aWFuIFphZ3JvZG5pY2sKPiA+Pj4+
Pj4+Pj4gCj4gPj4+Pj4+PiAKPiA+Pj4+Pj4+IExpZWJlIEdyw7zDn2UsCj4gPj4+Pj4+PiBDaHJp
c3RpYW4gVGhldW5lCj4gPj4+Pj4+PiAKPiA+Pj4+Pj4+IC0tIAo+ID4+Pj4+Pj4gQ2hyaXN0aWFu
IFRoZXVuZSDCtyBjdEBmbHlpbmdjaXJjdXMuaW8gwrcgKzQ5IDM0NSAyMTk0MDEgMAo+ID4+Pj4+
Pj4gRmx5aW5nIENpcmN1cyBJbnRlcm5ldCBPcGVyYXRpb25zIEdtYkggwrcgaHR0cHM6Ly9mbHlp
bmdjaXJjdXMuaW8KPiA+Pj4+Pj4+IExlaXB6aWdlciBTdHIuIDcwLzcxIMK3IDA2MTA4IEhhbGxl
IChTYWFsZSkgwrcgRGV1dHNjaGxhbmQKPiA+Pj4+Pj4+IEhSIFN0ZW5kYWwgSFJCIDIxMTY5IMK3
IEdlc2Now6RmdHNmw7xocmVyOiBDaHJpc3RpYW4gVGhldW5lLCBDaHJpc3RpYW4gWmFncm9kbmlj
awo+ID4+Pj4+IAo+ID4+Pj4+IAo+ID4+Pj4+IExpZWJlIEdyw7zDn2UsCj4gPj4+Pj4gQ2hyaXN0
aWFuIFRoZXVuZQo+ID4+Pj4+IAo+ID4+Pj4+IC0tIAo+ID4+Pj4+IENocmlzdGlhbiBUaGV1bmUg
wrcgY3RAZmx5aW5nY2lyY3VzLmlvIMK3ICs0OSAzNDUgMjE5NDAxIDAKPiA+Pj4+PiBGbHlpbmcg
Q2lyY3VzIEludGVybmV0IE9wZXJhdGlvbnMgR21iSCDCtyBodHRwczovL2ZseWluZ2NpcmN1cy5p
bwo+ID4+Pj4+IExlaXB6aWdlciBTdHIuIDcwLzcxIMK3IDA2MTA4IEhhbGxlIChTYWFsZSkgwrcg
RGV1dHNjaGxhbmQKPiA+Pj4+PiBIUiBTdGVuZGFsIEhSQiAyMTE2OSDCtyBHZXNjaMOkZnRzZsO8
aHJlcjogQ2hyaXN0aWFuIFRoZXVuZSwgQ2hyaXN0aWFuIFphZ3JvZG5pY2sKPiA+Pj4+PiAKPiA+
PiAKPiA+PiBMaWViZSBHcsO8w59lLAo+ID4+IENocmlzdGlhbiBUaGV1bmUKPiA+PiAKPiA+PiAt
LSAKPiA+PiBDaHJpc3RpYW4gVGhldW5lIMK3IGN0QGZseWluZ2NpcmN1cy5pbyDCtyArNDkgMzQ1
IDIxOTQwMSAwCj4gPj4gRmx5aW5nIENpcmN1cyBJbnRlcm5ldCBPcGVyYXRpb25zIEdtYkggwrcg
aHR0cHM6Ly9mbHlpbmdjaXJjdXMuaW8KPiA+PiBMZWlwemlnZXIgU3RyLiA3MC83MSDCtyAwNjEw
OCBIYWxsZSAoU2FhbGUpIMK3IERldXRzY2hsYW5kCj4gPj4gSFIgU3RlbmRhbCBIUkIgMjExNjkg
wrcgR2VzY2jDpGZ0c2bDvGhyZXI6IENocmlzdGlhbiBUaGV1bmUsIENocmlzdGlhbiBaYWdyb2Ru
aWNrCj4gPj4gCj4gCj4gTGllYmUgR3LDvMOfZSwKPiBDaHJpc3RpYW4gVGhldW5lCj4gCj4gLS0g
Cj4gQ2hyaXN0aWFuIFRoZXVuZSDCtyBjdEBmbHlpbmdjaXJjdXMuaW8gwrcgKzQ5IDM0NSAyMTk0
MDEgMAo+IEZseWluZyBDaXJjdXMgSW50ZXJuZXQgT3BlcmF0aW9ucyBHbWJIIMK3IGh0dHBzOi8v
Zmx5aW5nY2lyY3VzLmlvCj4gTGVpcHppZ2VyIFN0ci4gNzAvNzEgwrcgMDYxMDggSGFsbGUgKFNh
YWxlKSDCtyBEZXV0c2NobGFuZAo+IEhSIFN0ZW5kYWwgSFJCIDIxMTY5IMK3IEdlc2Now6RmdHNm
w7xocmVyOiBDaHJpc3RpYW4gVGhldW5lLCBDaHJpc3RpYW4gWmFncm9kbmljawo+IAo+IAo+IAo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gT3Blbmlw
bWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdAo+IE9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQKPiBodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5m
by9vcGVuaXBtaS1kZXZlbG9wZXIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRl
dmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5u
ZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
