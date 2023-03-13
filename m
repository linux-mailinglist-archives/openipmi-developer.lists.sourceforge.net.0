Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1BD6B7830
	for <lists+openipmi-developer@lfdr.de>; Mon, 13 Mar 2023 13:58:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pbhkl-0007OL-LQ;
	Mon, 13 Mar 2023 12:58:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1pbhkj-0007O7-Oq
 for openipmi-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 12:58:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5SEcFiqkc/MoNcABBYpfCmCe1/XQsVptLV0h9ST8nlA=; b=ilj6dEZKnNeuZ86jlTCKJXrJv5
 24ZFAcvpO9cjvd6IdEpbFmlqw1+DkqvopSIBfQoAUEXnfJZJ92dr07REyZBO45ydSUmQmPLBAyGpi
 ZHkiXsK0/+a2n0G4AaWFNyZMBQrikPJ/Zm9RnZtos6ddSJ+cAITOeAvF4fzG1JxFBElU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5SEcFiqkc/MoNcABBYpfCmCe1/XQsVptLV0h9ST8nlA=; b=e3giqOz9unbpiLpMhtX/hCk9bA
 Hu27uYF6hznz/uLSEB4vG2kDl8Nr9lxtV7ZzqafmrFGLsJCQ65IiQMjA6GXAjhhJPYyrGh1rWTvYZ
 dymA6YTRw+7pzHxqY1HG+OfnbysOxc1Zm0AZw4wP9CbU3B3kUf5ogeA9/JCkGXD+kDNQ=;
Received: from mail-oa1-f54.google.com ([209.85.160.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pbhkf-006VAT-KJ for openipmi-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 12:58:13 +0000
Received: by mail-oa1-f54.google.com with SMTP id
 586e51a60fabf-17683b570b8so13577726fac.13
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 13 Mar 2023 05:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678712284;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:from:to:cc:subject:date:message-id:reply-to;
 bh=5SEcFiqkc/MoNcABBYpfCmCe1/XQsVptLV0h9ST8nlA=;
 b=ouiOvdvHpZnZ9AxrNDNaFXcMA7DRC8bAGnfN34HRbgcr/Ij74IwB+4+fb97kxgUaxy
 W4s4X/9C6bMJdmdZ/OdN+BUyPoK6JSVV+quzm/Iw2E83ECQBvfX+G/ZXpToZu6DrAKDV
 D8Jr1pddx+FxZ/wNdr+eFuIFwSd5tPKRi0uDTNcQmqZW+xC1LK9ddHmaxdqrFjriIrGm
 ULOdS2L023tRIBuwhtrCmXpQMA9ql98z4X9hWXwf4a0Lo3B+O1hkC8NWMSQ9f00X0Xm4
 luMNoH5fOqGB5wut2Uh6kF8LgeIk1edg6orq9NApIUTLfSGcRczdBQpMkZbn11JFTh/U
 hIjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678712284;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=5SEcFiqkc/MoNcABBYpfCmCe1/XQsVptLV0h9ST8nlA=;
 b=Lw0YSUTGcNRfCVIWJ/jzu0dI+oP4owOMDCzwCeWBSZ4/dEC10uTutxP7GeYpr/wvYz
 OepMLiObVmoIQSy8YzkNuRcmFN9oP7bEvWfYcHWUDzhuGdYpcqNLeYqEz+92956/OpZi
 y/hAzpvus/LhStFyUT7q4eBK4bZ/Gif3mkGyTpHIIR171BKN5JQSXq23nyoYtxtLcP9s
 nDriEg3N2pTWa6fYIJDySOTgXkkfzlUmvQ8/7kEjoOEhuZle7ZcqyAtyajBGFsULTUVP
 B3KNFD8x0cLi/w3q7xdorLx2QckkcK7dWKCd12/u1hbtsDy5VPiivyYbh9scppjmXj2m
 1igw==
X-Gm-Message-State: AO0yUKWz04NsPz05LA0X7qKlqWjtvEUMypU9ayDKVDkRoGMtBUnQFS0/
 RIjgkCMRqVu7d+KsnLrviQxUMyJM1g==
X-Google-Smtp-Source: AK7set8dDsn89W3qzyvB+aDfKmsjPiwUr+3LzrYnm5vu6bIlbz1MugRxSvrdkqhwqnG/1diN2f9CqA==
X-Received: by 2002:a05:6871:289:b0:177:b5aa:5c4c with SMTP id
 i9-20020a056871028900b00177b5aa5c4cmr1738845oae.3.1678712283721; 
 Mon, 13 Mar 2023 05:58:03 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 bf22-20020a056808191600b003848dbe505fsm3020376oib.57.2023.03.13.05.58.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Mar 2023 05:58:03 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:fb9c:387e:209f:8278])
 by serve.minyard.net (Postfix) with ESMTPSA id 515B61800BD;
 Mon, 13 Mar 2023 12:58:02 +0000 (UTC)
Date: Mon, 13 Mar 2023 07:58:01 -0500
From: Corey Minyard <minyard@acm.org>
To: Christian Theune <ct@flyingcircus.io>
Message-ID: <ZA8d2WkcAoUpkksa@minyard.net>
References: <4EA3F27B-7819-446F-9F22-C6B167348E88@flyingcircus.io>
 <Y/4tpHxe0irCRxjK@minyard.net>
 <D77B48B4-37B1-49FA-958C-D436407300B1@flyingcircus.io>
 <Y/40CIt6lw+0vjv1@minyard.net>
 <BBC4CC30-BCAC-400C-8804-8E8F6FD296C8@flyingcircus.io>
 <Y/+ETg3dpg+Ui48+@minyard.net>
 <28273499-DB8A-4C04-8BEE-BF5488BB1A6F@flyingcircus.io>
 <ZAUdcpPfEDmmEcAF@minyard.net>
 <0393CB55-5A1D-408E-A4DA-41958BE81CA1@flyingcircus.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0393CB55-5A1D-408E-A4DA-41958BE81CA1@flyingcircus.io>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, Mar 13, 2023 at 10:27:51AM +0100, Christian Theune
    wrote: > Hi, > > alright, so here’s the output from the NixOS machine:
   > > root@xxx ~ # echo c >/proc/sysrq-trigger > client_loop: send dis [...]
    
 
 Content analysis details:   (0.4 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.160.54 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.160.54 listed in list.dnswl.org]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1pbhkf-006VAT-KJ
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

T24gTW9uLCBNYXIgMTMsIDIwMjMgYXQgMTA6Mjc6NTFBTSArMDEwMCwgQ2hyaXN0aWFuIFRoZXVu
ZSB3cm90ZToKPiBIaSwKPiAKPiBhbHJpZ2h0LCBzbyBoZXJl4oCZcyB0aGUgb3V0cHV0IGZyb20g
dGhlIE5peE9TIG1hY2hpbmU6Cj4gCj4gcm9vdEB4eHggfiAjIGVjaG8gYyA+L3Byb2Mvc3lzcnEt
dHJpZ2dlcgo+IGNsaWVudF9sb29wOiBzZW5kIGRpc2Nvbm5lY3Q6IEJyb2tlbiBwaXBlCj4g4oCm
Cj4gCj4gcm9vdEB4eHggfiAjIGpvdXJuYWxjdGwgLXUgaXBtaS1sb2cuc2VydmljZQo+IC0tIEpv
dXJuYWwgYmVnaW5zIGF0IFN1biAyMDIzLTAyLTI2IDE0OjI1OjM2IENFVCwgZW5kcyBhdCBNb24g
MjAyMy0wMy0xMyAxMDoyNToyNyBDRVQuIC0tCj4gTWFyIDEzIDEwOjEyOjM4IHh4eCBpcG1pLWxv
Zy1zdGFydFs1MjA5NzNdOiBDbGVhcmluZyBTRUwuICBQbGVhc2UgYWxsb3cgYSBmZXcgc2Vjb25k
cyB0byBlcmFzZS4KPiAuLi4KPiAtLSBCb290IGZkZWY0OTZlNzg0ZTQ1NDFhYmQ5YWU0MGRmNDcy
YTBiIC0tCj4gTWFyIDEzIDEwOjI1OjA3IHh4eCBpcG1pLWxvZy1zdGFydFsxOTczXTogICAgMSB8
IDAzLzEzLzIwMjMgfCAwOToxMjo0OSB8IEV2ZW50IExvZ2dpbmcgRGlzYWJsZWQgU0VMIHwgTG9n
IGFyZWEgcmVzZXQvY2xlYXJlZCB8IEFzc2VydGVkCj4gTWFyIDEzIDEwOjI1OjA3IHh4eCBpcG1p
LWxvZy1zdGFydFsxOTczXTogICAgMiB8IDAzLzEzLzIwMjMgfCAwOToyMTowNiB8IFdhdGNoZG9n
MiBPUyBXYXRjaGRvZyB8IEhhcmQgcmVzZXQgfCBBc3NlcnRlZAo+IE1hciAxMyAxMDoyNTowNyB4
eHggaXBtaS1sb2ctc3RhcnRbMTk3N106IENsZWFyaW5nIFNFTC4gIFBsZWFzZSBhbGxvdyBhIGZl
dyBzZWNvbmRzIHRvIGVyYXNlLgoKSG1tLCB0aGUgU0VMIGdvdCBjbGVhcmVkLiAgVGhhdCB3b3Vs
ZCBjbGVhciBvdXQgYW55IG9mIHRoZSBsb2dzIHRoYXQKd2VyZSBpc3N1ZWQgYmVmb3JlIHRoYXQg
dGltZS4gIEknbSBub3Qgc3VyZSB3aGVuIHRoZSBhYm92ZSBoYXBwZW5lZAp2ZXJzZXMgdGhlIGNy
YXNoLCB0aG91Z2guICBJdCBsb29rcyBsaWtlIGl0IG9jY3VycmVkIGFzIHBhcnQgb2YgdGhlCnJl
Ym9vdCwgYnV0IEknbSBub3Qgc3VyZSB3aGF0IEknbSBzZWVpbmcuICBNYXliZSB5b3UgaGF2ZSBh
IHN0YXJ0dXAKcHJvY2VzcyB0aGF0IGNsZWFycyB0aGUgU0VMPwoKQXNzdW1pbmcgdGhhdCdzIG5v
dCB0aGUgaXNzdWUsIHdoYXQgeW91IGhhdmUgbG9va3Mgb2suICBJJ2QgbmVlZCB0byBhZGQKc29t
ZSBsb2dzIHRvIHRoZSBrZXJuZWwgdG8gc2VlIGlmIHRoZSBsb2cgb3BlcmF0aW9uIGV2ZXIgaGFw
cGVucy4KCi1jb3JleQoKPiAKPiBUaGUgU09MIGxvZyBsb29rcyBsaWtlIHRoaXM6Cj4gCj4gCj4g
WzExMDc1ODUuOTE3Njg5XSBzeXNycTogVHJpZ2dlciBhIGNyYXNoCj4gWzExMDc1ODUuOTIxMjcy
XSBLZXJuZWwgcGFuaWMgLSBub3Qgc3luY2luZzogc3lzcnEgdHJpZ2dlcmVkIGNyYXNoCj4gWzEx
MDc1ODUuOTI3MTc4XSBDUFU6IDEgUElEOiA1MjEwMzMgQ29tbTogYmFzaCBUYWludGVkOiBHICAg
ICAgICAgIEkgICAgICAgNS4xMC4xNTkgIzEtTml4T1MKPiBbMTEwNzU4NS45MzUzMzVdIEhhcmR3
YXJlIG5hbWU6IERlbGwgSW5jLiBQb3dlckVkZ2UgUjUxMC8wMEhEUDAsIEJJT1MgMS4xMS4wIDA3
LzIzLzIwMTIKPiBbMTEwNzU4NS45NDMwNThdIENhbGwgVHJhY2U6Cj4gWzExMDc1ODUuOTQ1Njgw
XSAgZHVtcF9zdGFjaysweDZiLzB4ODMKPiBbMTEwNzU4NS45NDkxNThdICBwYW5pYysweDEwMS8w
eDJjOAo+IFsxMTA3NTg1Ljk1MjM3OV0gID8gcHJpbnRrKzB4NTgvMHg3Mwo+IFsxMTA3NTg1Ljk1
NTY4N10gIHN5c3JxX2hhbmRsZV9jcmFzaCsweDE2LzB4MjAKPiBbMTEwNzU4NS45NTk4NTldICBf
X2hhbmRsZV9zeXNycS5jb2xkKzB4NDMvMHgxMWEKPiBbMTEwNzU4NS45NjQyMDNdICB3cml0ZV9z
eXNycV90cmlnZ2VyKzB4MjQvMHg0MAo+IFsxMTA3NTg1Ljk2ODQ2M10gIHByb2NfcmVnX3dyaXRl
KzB4NTEvMHg5MAo+IFsxMTA3NTg1Ljk3MjI5MF0gIHZmc193cml0ZSsweGMzLzB4MjgwCj4gWzEx
MDc1ODUuOTc1NzY4XSAga3N5c193cml0ZSsweDVmLzB4ZTAKPiBbMTEwNzU4NS45NzkyNDhdICBk
b19zeXNjYWxsXzY0KzB4MzMvMHg0MAo+IFsxMTA3NTg1Ljk4Mjk4N10gIGVudHJ5X1NZU0NBTExf
NjRfYWZ0ZXJfaHdmcmFtZSsweDYxLzB4YzYKPiBbMTEwNzU4NS45ODgxOTldIFJJUDogMDAzMzow
eDdmNTg3MzkzMjEzMwo+IFsxMTA3NTg1Ljk5MTkzOF0gQ29kZTogMGMgMDAgZjcgZDggNjQgODkg
MDIgNDggYzcgYzAgZmYgZmYgZmYgZmYgZWIgYjMgMGYgMWYgODAgMDAgMDAgMDAgMDAgNjQgOGIg
MDQgMjUgMTggMDAgMDAgMDAgODUgYzAgNzUgMTQgYjggMDEgMDAgMDAgMDAgMGYgMDUgPDQ4PiAz
ZCAwMCBmMCBmZiBmZiA3NyA1NSBjMyAwZiAxZiA0MCAwMCA0MSA1NCA0OSA4OSBkNCA1NSA0OCA4
OSBmNQo+IFsxMTA3NTg2LjAxMDg0Ml0gUlNQOiAwMDJiOjAwMDA3ZmZjYzEzODA4YzggRUZMQUdT
OiAwMDAwMDI0NiBPUklHX1JBWDogMDAwMDAwMDAwMDAwMDAwMQo+IFsxMTA3NTg2LjAxODU2Nl0g
UkFYOiBmZmZmZmZmZmZmZmZmZmRhIFJCWDogMDAwMDAwMDAwMDAwMDAwMiBSQ1g6IDAwMDA3ZjU4
NzM5MzIxMzMKPiBbMTEwNzU4Ni4wMjU5MjNdIFJEWDogMDAwMDAwMDAwMDAwMDAwMiBSU0k6IDAw
MDAwMDAwMDA1YzFjMDggUkRJOiAwMDAwMDAwMDAwMDAwMDAxCj4gWzExMDc1ODYuMDMzMjEzXSBS
QlA6IDAwMDAwMDAwMDA1YzFjMDggUjA4OiAwMDAwMDAwMDAwMDAwMDBhIFIwOTogMDAwMDdmNTg3
MzljMmY0MAo+IFsxMTA3NTg2LjA0MDUwNF0gUjEwOiAwMDAwMDAwMDAwNWNjMzQ4IFIxMTogMDAw
MDAwMDAwMDAwMDI0NiBSMTI6IDAwMDAwMDAwMDAwMDAwMDIKPiBbMTEwNzU4Ni4wNDc3OTRdIFIx
MzogMDAwMDdmNTg3M2EwMDUyMCBSMTQ6IDAwMDA3ZjU4NzNhMDA3MjAgUjE1OiAwMDAwMDAwMDAw
MDAwMDAyCj4gCj4gTm90aGluZyBvYnZpb3VzIHRvIG1lIGhlcmUg4oCmIGlmIHlvdSBoYXZlIGFu
eSBmdXJ0aGVyIGlkZWFzIHdoYXQgdG8gdGVzdCwgbGV0IG1lIGtub3cuIEkgc2hvdWxkIGJlIG1v
cmUgcmVzcG9uc2l2ZSBhZ2FpbiBub3cuCj4gCj4gVGhhbmtzIGFuZCBraW5kIHJlZ2FyZHMsCj4g
Q2hyaXN0aWFuCj4gCj4gPiBPbiA1LiBNYXIgMjAyMywgYXQgMjM6NTMsIENvcmV5IE1pbnlhcmQg
PG1pbnlhcmRAYWNtLm9yZz4gd3JvdGU6Cj4gPiAKPiA+IE9uIFdlZCwgTWFyIDAxLCAyMDIzIGF0
IDA2OjAwOjA3UE0gKzAxMDAsIENocmlzdGlhbiBUaGV1bmUgd3JvdGU6Cj4gPj4gSeKAmW0gZ29p
bmcgdG8gYWN0dWFsbHkgYXR0YWNoIGEgc2VyaWFsIGNvbnNvbGUgdG8gd2F0Y2ggdGhlIOKAnGVj
aG8gY+KAnSBwYW5pYywgbWF5YmUgdGhhdCBnaXZlcyBfc29tZV8gaW5kaWNhdGlvbi4KPiA+PiAK
PiA+PiBPdGhlcndpc2U6IEkgY2FuIHF1aWNrbHkgcnVuIHBhdGNoZXMgb24gdGhlIGtlcm5lbCB0
aGVyZSB0byB0cnkgb3V0IHRoaW5ncy4gKEFuZCB0aGUgZnVuZGluZyBvZmZlciBzdGlsbCBzdGFu
ZHMuKQo+ID4gCj4gPiBBbnkgbmV3cyBvbiB0aGlzPyAgSSdtIGN1cmlvdXMgd2hhdCB0aGlzIGNv
dWxkIGJlLgo+ID4gCj4gPiAtY29yZXkKPiA+IAo+ID4+IAo+ID4+IENocmlzdGlhbgo+ID4+IAo+
ID4+PiBPbiAxLiBNYXIgMjAyMywgYXQgMTc6NTgsIENvcmV5IE1pbnlhcmQgPG1pbnlhcmRAYWNt
Lm9yZz4gd3JvdGU6Cj4gPj4+IAo+ID4+PiBPbiBUdWUsIEZlYiAyOCwgMjAyMyBhdCAwNjozNjox
N1BNICswMTAwLCBDaHJpc3RpYW4gVGhldW5lIHdyb3RlOgo+ID4+Pj4gVGhhbmtzLCBib3RoIG1h
Y2hpbmVzIHJlcG9ydDoKPiA+Pj4+IAo+ID4+Pj4gIyBjYXQgL3N5cy9tb2R1bGUvaXBtaV9tc2do
YW5kbGVyL3BhcmFtZXRlcnMvcGFuaWNfb3AKPiA+Pj4+IHN0cmluZwo+ID4+PiAKPiA+Pj4gQXQg
dGhpcyBwb2ludCwgSSBoYXZlIG5vIGlkZWEuICBJJ2QgaGF2ZSB0byBzdGFydCBhZGRpbmcgcHJp
bnRrcyBpbnRvCj4gPj4+IHRoZSBjb2RlIGFuZCBjYXVzZSBjcmFzaGVzIHRvIHNlZSB3aGF0IGlz
IGhhcHBpbmcuCj4gPj4+IAo+ID4+PiBNYXliZSBzb21ldGhpbmcgaXMgZ2V0dGluZyBpbiB0aGUg
d2F5IG9mIHRoZSBwYW5pYyBub3RpZmllcnMgYW5kIGRvaW5nCj4gPj4+IHNvbWV0aGluZyB0byBw
cmV2ZW50IHRoZSBJUE1JIGRyaXZlciBmcm9tIHdvcmtpbmcuCj4gPj4+IAo+ID4+PiAtY29yZXkK
PiA+Pj4gCj4gPj4+PiAKPiA+Pj4+IAo+ID4+Pj4+IE9uIDI4LiBGZWIgMjAyMywgYXQgMTg6MDQs
IENvcmV5IE1pbnlhcmQgPG1pbnlhcmRAYWNtLm9yZz4gd3JvdGU6Cj4gPj4+Pj4gCj4gPj4+Pj4g
T2gsIEkgZm9yZ290LiAgWW91IGNhbiBsb29rIGF0IHBhbmljX29wIGluIC9zeXMvbW9kdWxlL2lw
bWlfbXNnaGFuZGxlci9wYXJhbWV0ZXJzL3BhbmljX29wCj4gPj4+Pj4gCj4gPj4+Pj4gLWNvcmV5
Cj4gPj4+Pj4gCj4gPj4+Pj4gT24gVHVlLCBGZWIgMjgsIDIwMjMgYXQgMDU6NDg6MDdQTSArMDEw
MCwgQ2hyaXN0aWFuIFRoZXVuZSB2aWEgT3BlbmlwbWktZGV2ZWxvcGVyIHdyb3RlOgo+ID4+Pj4+
PiBIaSwKPiA+Pj4+Pj4gCj4gPj4+Pj4+PiBPbiAyOC4gRmViIDIwMjMsIGF0IDE3OjM2LCBDb3Jl
eSBNaW55YXJkIDxtaW55YXJkQGFjbS5vcmc+IHdyb3RlOgo+ID4+Pj4+Pj4gCj4gPj4+Pj4+PiBP
biBUdWUsIEZlYiAyOCwgMjAyMyBhdCAwMjo1MzoxMlBNICswMTAwLCBDaHJpc3RpYW4gVGhldW5l
IHZpYSBPcGVuaXBtaS1kZXZlbG9wZXIgd3JvdGU6Cj4gPj4+Pj4+Pj4gSGksCj4gPj4+Pj4+Pj4g
Cj4gPj4+Pj4+Pj4gSeKAmXZlIGJlZW4gdHJ5aW5nIHRvIGRlYnVnIHRoZSBQQU5JQyBhbmQgT0VN
IHN0cmluZyBoYW5kbGluZyBhbmQgYW0gcnVubmluZyBvdXQgb2YgaWRlYXMgd2hldGhlciB0aGlz
IGlzIGEgYnVnIG9yIHdoZXRoZXIgc29tZXRoaW5nIHNvIHN1YnRsZSBoYXMgY2hhbmdlZCBpbiBt
eSBjb25maWcgdGhhdCBJ4oCZbSBqdXN0IG5vdCBzZWVpbmcgaXQuCj4gPj4+Pj4+Pj4gCj4gPj4+
Pj4+Pj4gKE5vdGU6IEnigJltIHdpbGxpbmcgdG8gcGF5IGZvciBjb25zdWx0aW5nLikKPiA+Pj4+
Pj4+IAo+ID4+Pj4+Pj4gUHJvYmFibHkgbm90IG5lY2Vzc2FyeS4KPiA+Pj4+Pj4gCj4gPj4+Pj4+
IFRoYW5rcyEgVGhlIG9mZmVyIGFsd2F5cyBzdGFuZHMuIElmIHdlIHNob3VsZCBldmVyIG1lZXQg
SeKAmW0gYWxzbyBhYmxlIHRvIHBheSBpbiBiZXZlcmFnZXMuIDspCj4gPj4+Pj4+IAo+ID4+Pj4+
Pj4+IEkgaGF2ZSBtYWNoaW5lcyB0aGF0IHdl4oCZdmUgbW92ZWQgZnJvbSBhbiBvbGRlciBzZXR1
cCAoR2VudG9vLCAobW9zdGx5KSB2YW5pbGxhIGtlcm5lbCA0LjE5LjE1NykgdG8gYSBuZXdlciBz
ZXR1cCAoTml4T1MsIChtb3N0bHkpIHZhbmlsbGEga2VybmVsIDUuMTAuMTU5KSBhbmQgSeKAmW0g
bm93IGV4cGVyaWVuY2luZyBjcmFzaGVzIHRoYXQgc2VlbSB0byBiZSBrZXJuZWwgcGFuaWNzIGJ1
dCBkbyBub3QgZ2V0IHRoZSB1c3VhbCBtZXNzYWdlcyBpbiB0aGUgSVBNSSBTRUwuCj4gPj4+Pj4+
PiAKPiA+Pj4+Pj4+IEkganVzdCB0ZXN0ZWQgb24gc3RvY2sgNS4xMC4xNTkgYW5kIGl0IHdvcmtl
ZCB3aXRob3V0IGlzc3VlLiAgRXZlcnl0aGluZwo+ID4+Pj4+Pj4geW91IGhhdmUgYmVsb3cgbG9v
a3Mgb2suCj4gPj4+Pj4+PiAKPiA+Pj4+Pj4+IENhbiB5b3UgdGVzdCBieSBjYXVzaW5nIGEgY3Jh
c2ggd2l0aDoKPiA+Pj4+Pj4+IAo+ID4+Pj4+Pj4gZWNobyBjID4vcHJvYy9zeXNycS10cmlnZ2Vy
Cj4gPj4+Pj4+PiAKPiA+Pj4+Pj4+IGFuZCBzZWUgaWYgaXQgd29ya3M/Cj4gPj4+Pj4+IAo+ID4+
Pj4+PiBZZWFoLCBhbHJlYWR5IHRyaWVkIHRoYXQgYW5kIHVuZm9ydHVuYXRlbHkgdGhhdCBfZG9l
c27igJl0XyB3b3JrLgo+ID4+Pj4+PiAKPiA+Pj4+Pj4+IEl0IHNvdW5kcyBsaWtlIHlvdSBhcmUg
aGF2aW5nIHNvbWUgdHlwZSBvZiBjcmFzaCB0aGF0IHlvdSB3b3VsZCBub3JtYWxseQo+ID4+Pj4+
Pj4gdXNlIHRoZSBJUE1JIGxvZ3MgdG8gZGVidWcuICBIb3dldmVyLCB0aGV5IGFyZW4ndCBwZXJm
ZWN0LCB0aGUgc3lzdGVtCj4gPj4+Pj4+PiBoYXMgdG8gc3RheSB1cCBsb25nIGVub3VnaCB0byBn
ZXQgdGhlbSBpbnRvIHRoZSBldmVudCBsb2cuCj4gPj4+Pj4+IAo+ID4+Pj4+PiBJIHRoaW5rIHRo
ZXkgYXJlIHN0YXlpbmcgdXAgbG9uZyBlbm91Z2ggYmVjYXVzZSBhIHBhbmljIHRyaWdnZXJzIHRo
ZSAyNTUgc2Vjb25kIGJ1bXAgaW4gdGhlIHdhdGNoZG9nIGFuZCBvbmx5IHRoZW4gcGFzcyBvbi4g
SG93ZXZlciwgaeKAmXZlIGFsc28gbm90aWNlZCB0aGF0IHRoZSBrZXJuZWwgX3Nob3VsZF8gYmUg
cmVib290aW5nIGFmdGVyIGEgcGFuaWMgbXVjaCBmYXN0ZXIgKGFuZCBub3QgcmVseSBvbiB0aGUg
d2F0Y2hkb2cpIGFuZCB0aGF0IGRvZXNu4oCZdCBoYXBwZW4gZWl0aGVyLiAoU29ycnkgdGhpcyBq
dXN0IHBvcHBlZCBmcm9tIHRoZSBiYWNrIG9mIG15IGhlYWQpLgo+ID4+Pj4+PiAKPiA+Pj4+Pj4+
IEluIHRoaXMgc2l0dWF0aW9uLCBnZXR0aW5nIGEgc2VyaWFsIGNvbnNvbGUgKHByb2JhYmx5IHRo
cm91Z2ggSVBNSQo+ID4+Pj4+Pj4gU2VyaWFsIG92ZXIgTEFOKSBhbmQgZ2V0dGluZyB0aGUgY29u
c29sZSBvdXRwdXQgb24gYSBjcmFzaCBpcyBwcm9iYWJseQo+ID4+Pj4+Pj4geW91ciBiZXN0IG9w
dGlvbi4gIFlvdSBjYW4gdXNlIGlwbWl0b29sIGZvciB0aGlzLCBvciBJIGhhdmUgYSBsaWJyYXJ5
Cj4gPj4+Pj4+PiB0aGF0IGlzIGFibGUgdG8gbWFrZSBjb25uZWN0aW9ucyB0byBzZXJpYWwgcG9y
dHMsIGluY2x1ZGluZyB0aHJvdWdoIElQTUkKPiA+Pj4+Pj4+IFNvTC4KPiA+Pj4+Pj4gCj4gPj4+
Pj4+IFl1cC4gQmVlbiB0aGVyZSwgdG9vLiA6KQo+ID4+Pj4+PiAKPiA+Pj4+Pj4gVW5mb3J0dW5h
dGVseSB3ZeKAmXJlIGN1cnJlbnRseSBjaGFzaW5nIHNvbWV0aGluZyB0aGF0IHBvcHMgdXAgdmVy
eSByYW5kb21seSBvbiBzb21ld2hhdCBvZGQgbWFjaGluZXMgYW5kIEkgYWxzbyBoYXZlIHRoZSBm
ZWVsaW5nIHRoYXQgaXTigJlzIHN5c3RlbWF0aWNhbGx5IGJyb2tlbiByaWdodCBub3cgKGFzIHRo
ZSDigJxlY2hvIGPigJ0gZG9lc27igJl0IHdvcmspLgo+ID4+Pj4+PiAKPiA+Pj4+Pj4gVGhhbmtz
IGEgbG90LAo+ID4+Pj4+PiBDaHJpc3RpYW4KPiA+Pj4+Pj4gCj4gPj4+Pj4+IC0tIAo+ID4+Pj4+
PiBDaHJpc3RpYW4gVGhldW5lIMK3IGN0QGZseWluZ2NpcmN1cy5pbyDCtyArNDkgMzQ1IDIxOTQw
MSAwCj4gPj4+Pj4+IEZseWluZyBDaXJjdXMgSW50ZXJuZXQgT3BlcmF0aW9ucyBHbWJIIMK3IGh0
dHBzOi8vZmx5aW5nY2lyY3VzLmlvCj4gPj4+Pj4+IExlaXB6aWdlciBTdHIuIDcwLzcxIMK3IDA2
MTA4IEhhbGxlIChTYWFsZSkgwrcgRGV1dHNjaGxhbmQKPiA+Pj4+Pj4gSFIgU3RlbmRhbCBIUkIg
MjExNjkgwrcgR2VzY2jDpGZ0c2bDvGhyZXI6IENocmlzdGlhbiBUaGV1bmUsIENocmlzdGlhbiBa
YWdyb2RuaWNrCj4gPj4+Pj4+IAo+ID4+Pj4+PiAKPiA+Pj4+Pj4gCj4gPj4+Pj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4+Pj4+IE9wZW5pcG1p
LWRldmVsb3BlciBtYWlsaW5nIGxpc3QKPiA+Pj4+Pj4gT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3Rz
LnNvdXJjZWZvcmdlLm5ldAo+ID4+Pj4+PiBodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9s
aXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIKPiA+Pj4+IAo+ID4+Pj4gTGllYmUgR3LD
vMOfZSwKPiA+Pj4+IENocmlzdGlhbiBUaGV1bmUKPiA+Pj4+IAo+ID4+Pj4gLS0gCj4gPj4+PiBD
aHJpc3RpYW4gVGhldW5lIMK3IGN0QGZseWluZ2NpcmN1cy5pbyDCtyArNDkgMzQ1IDIxOTQwMSAw
Cj4gPj4+PiBGbHlpbmcgQ2lyY3VzIEludGVybmV0IE9wZXJhdGlvbnMgR21iSCDCtyBodHRwczov
L2ZseWluZ2NpcmN1cy5pbwo+ID4+Pj4gTGVpcHppZ2VyIFN0ci4gNzAvNzEgwrcgMDYxMDggSGFs
bGUgKFNhYWxlKSDCtyBEZXV0c2NobGFuZAo+ID4+Pj4gSFIgU3RlbmRhbCBIUkIgMjExNjkgwrcg
R2VzY2jDpGZ0c2bDvGhyZXI6IENocmlzdGlhbiBUaGV1bmUsIENocmlzdGlhbiBaYWdyb2RuaWNr
Cj4gPj4+PiAKPiA+PiAKPiA+PiBMaWViZSBHcsO8w59lLAo+ID4+IENocmlzdGlhbiBUaGV1bmUK
PiA+PiAKPiA+PiAtLSAKPiA+PiBDaHJpc3RpYW4gVGhldW5lIMK3IGN0QGZseWluZ2NpcmN1cy5p
byDCtyArNDkgMzQ1IDIxOTQwMSAwCj4gPj4gRmx5aW5nIENpcmN1cyBJbnRlcm5ldCBPcGVyYXRp
b25zIEdtYkggwrcgaHR0cHM6Ly9mbHlpbmdjaXJjdXMuaW8KPiA+PiBMZWlwemlnZXIgU3RyLiA3
MC83MSDCtyAwNjEwOCBIYWxsZSAoU2FhbGUpIMK3IERldXRzY2hsYW5kCj4gPj4gSFIgU3RlbmRh
bCBIUkIgMjExNjkgwrcgR2VzY2jDpGZ0c2bDvGhyZXI6IENocmlzdGlhbiBUaGV1bmUsIENocmlz
dGlhbiBaYWdyb2RuaWNrCj4gPj4gCj4gCj4gTGllYmUgR3LDvMOfZSwKPiBDaHJpc3RpYW4gVGhl
dW5lCj4gCj4gLS0gCj4gQ2hyaXN0aWFuIFRoZXVuZSDCtyBjdEBmbHlpbmdjaXJjdXMuaW8gwrcg
KzQ5IDM0NSAyMTk0MDEgMAo+IEZseWluZyBDaXJjdXMgSW50ZXJuZXQgT3BlcmF0aW9ucyBHbWJI
IMK3IGh0dHBzOi8vZmx5aW5nY2lyY3VzLmlvCj4gTGVpcHppZ2VyIFN0ci4gNzAvNzEgwrcgMDYx
MDggSGFsbGUgKFNhYWxlKSDCtyBEZXV0c2NobGFuZAo+IEhSIFN0ZW5kYWwgSFJCIDIxMTY5IMK3
IEdlc2Now6RmdHNmw7xocmVyOiBDaHJpc3RpYW4gVGhldW5lLCBDaHJpc3RpYW4gWmFncm9kbmlj
awo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9w
ZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5m
by9vcGVuaXBtaS1kZXZlbG9wZXIK
