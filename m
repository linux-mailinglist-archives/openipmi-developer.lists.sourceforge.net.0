Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2514E6AB30B
	for <lists+openipmi-developer@lfdr.de>; Sun,  5 Mar 2023 23:53:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pYxEl-0008NZ-9f;
	Sun, 05 Mar 2023 22:53:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1pYxEk-0008NT-0k
 for openipmi-developer@lists.sourceforge.net;
 Sun, 05 Mar 2023 22:53:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XR9sPqqXyWBLHyxJ31MJZzTOP9TFl8bMkJdIzsXKA5k=; b=fIL83g9iMrark4aLx5ZsqJJ1vU
 PLMgCTap0cvqOJTlVNWameXL1J9L7duPYtYwFR3tjtGSF9cpSB/o3NbZP0WbnS2m8GX27MJu52C+t
 863lOabwO+9AEPQaxZqgJKC4nT5LNe8NDADhTErUNVRbfGYjxOBWMdj90PPuzQOlvXes=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XR9sPqqXyWBLHyxJ31MJZzTOP9TFl8bMkJdIzsXKA5k=; b=mlSlyWOrM2+PSTCI3ay+9umBU6
 gjLeMl1IYvrNSjd1VAEbYkRI3YnQx22dGzuurIRirUuseK91kAf+kQDFU+AIVajBak2KaNnBsWpPR
 wAYB7ue80mG3rknqsUQHPfRbCwEbau3Mz84VsgkSmkHS+ddIAHw9s/zokDPXji2opzuo=;
Received: from mail-qt1-f179.google.com ([209.85.160.179])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pYxEi-000OsQ-CF for openipmi-developer@lists.sourceforge.net;
 Sun, 05 Mar 2023 22:53:49 +0000
Received: by mail-qt1-f179.google.com with SMTP id w23so8823226qtn.6
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 05 Mar 2023 14:53:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678056822;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:from:to:cc:subject:date:message-id:reply-to;
 bh=XR9sPqqXyWBLHyxJ31MJZzTOP9TFl8bMkJdIzsXKA5k=;
 b=GrJ4qKmeLD5RG9qECYSXCG/uattMpJQATqWoCe8hnT1yfkBlVhLbj/tQYW5F6nVNBh
 XSX1orlVlzemxwYij2qy4n634frORr3kjs+3BSm7qu+LSkP1WqJj+HI2hC5URzW6yfKw
 85N5FuUgLHmEK4/2sqo3P+Sgo/QlWC8Mj6VjuO0jdBlFzKQwHWnFX2Mao4AjV2WWLxBp
 DbZLp0edh9msZ50/PFC5ew9C9asRwaz1p30g0aekH3l4ifockrZuNDPh+pP4NfFafFGU
 ZunIntIICi5DHSe4ejkAFWkFufJd3lUvydIN63LsMrvXOpQeVmgEBZyh6X3fknLnt/Mr
 eyrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678056822;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=XR9sPqqXyWBLHyxJ31MJZzTOP9TFl8bMkJdIzsXKA5k=;
 b=xOZedhoYvE6arhvM2qqdwzG3/ErnPDQX0nUkJeUQWEKhkdce1BpbFue0t+AbEFA0e7
 LCrnSYeG9X3ahGY0qXE4TIW8m6jSS5ab3c9ZPCtLXbvfQ09+FmnCtrRSUgXoRTi0iqLG
 MGwn4osxyQznmS5l7L7cZQm9I6t4bjKMUmaxOx+kZSvEj+LxWe2SySWhuWN1XZGsiszM
 CFOonmMfp5DozF+YVMEdB2PGtH51rgg7JnfVq67pNLXqrtPDKNJqI2d97oGhYh6xJh3j
 UqLfiO5bCeLSU7Rf5np8arGZBMjhzQbp8utjxlhnY3gs/0GwEi2lkbqscMLByIFhBqPl
 NImQ==
X-Gm-Message-State: AO0yUKWn3h+mjrdNf37GbVglmSXesnBCNBqHr00wSxc7iGpb+YE7e2pg
 7TRvsd7nk2iwHUW84+p25NZA903ZYg==
X-Google-Smtp-Source: AK7set/WeLBnr7B75WbAwbg8+9o8FZZIpLT/s323pk0xhpTCcV8LHJ7vnOeVdb6ssyYRgacCEQHN+g==
X-Received: by 2002:ac8:5fc2:0:b0:3bf:e2d1:7fb with SMTP id
 k2-20020ac85fc2000000b003bfe2d107fbmr14259222qta.44.1678056822411; 
 Sun, 05 Mar 2023 14:53:42 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 t190-20020a3746c7000000b0074235745fdasm6229844qka.58.2023.03.05.14.53.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Mar 2023 14:53:41 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:2404:cfaf:e457:6dc8])
 by serve.minyard.net (Postfix) with ESMTPSA id EDEDE180044;
 Sun,  5 Mar 2023 22:53:39 +0000 (UTC)
Date: Sun, 5 Mar 2023 16:53:38 -0600
From: Corey Minyard <minyard@acm.org>
To: Christian Theune <ct@flyingcircus.io>
Message-ID: <ZAUdcpPfEDmmEcAF@minyard.net>
References: <4EA3F27B-7819-446F-9F22-C6B167348E88@flyingcircus.io>
 <Y/4tpHxe0irCRxjK@minyard.net>
 <D77B48B4-37B1-49FA-958C-D436407300B1@flyingcircus.io>
 <Y/40CIt6lw+0vjv1@minyard.net>
 <BBC4CC30-BCAC-400C-8804-8E8F6FD296C8@flyingcircus.io>
 <Y/+ETg3dpg+Ui48+@minyard.net>
 <28273499-DB8A-4C04-8BEE-BF5488BB1A6F@flyingcircus.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <28273499-DB8A-4C04-8BEE-BF5488BB1A6F@flyingcircus.io>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Mar 01, 2023 at 06:00:07PM +0100, Christian Theune
    wrote: > I’m going to actually attach a serial console to watch the “echo
    c” panic, maybe that gives _some_ indication. > > Otherwise: [...] 
 
 Content analysis details:   (0.4 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.160.179 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.160.179 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [tcminyard[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different
X-Headers-End: 1pYxEi-000OsQ-CF
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

T24gV2VkLCBNYXIgMDEsIDIwMjMgYXQgMDY6MDA6MDdQTSArMDEwMCwgQ2hyaXN0aWFuIFRoZXVu
ZSB3cm90ZToKPiBJ4oCZbSBnb2luZyB0byBhY3R1YWxseSBhdHRhY2ggYSBzZXJpYWwgY29uc29s
ZSB0byB3YXRjaCB0aGUg4oCcZWNobyBj4oCdIHBhbmljLCBtYXliZSB0aGF0IGdpdmVzIF9zb21l
XyBpbmRpY2F0aW9uLgo+IAo+IE90aGVyd2lzZTogSSBjYW4gcXVpY2tseSBydW4gcGF0Y2hlcyBv
biB0aGUga2VybmVsIHRoZXJlIHRvIHRyeSBvdXQgdGhpbmdzLiAoQW5kIHRoZSBmdW5kaW5nIG9m
ZmVyIHN0aWxsIHN0YW5kcy4pCgpBbnkgbmV3cyBvbiB0aGlzPyAgSSdtIGN1cmlvdXMgd2hhdCB0
aGlzIGNvdWxkIGJlLgoKLWNvcmV5Cgo+IAo+IENocmlzdGlhbgo+IAo+ID4gT24gMS4gTWFyIDIw
MjMsIGF0IDE3OjU4LCBDb3JleSBNaW55YXJkIDxtaW55YXJkQGFjbS5vcmc+IHdyb3RlOgo+ID4g
Cj4gPiBPbiBUdWUsIEZlYiAyOCwgMjAyMyBhdCAwNjozNjoxN1BNICswMTAwLCBDaHJpc3RpYW4g
VGhldW5lIHdyb3RlOgo+ID4+IFRoYW5rcywgYm90aCBtYWNoaW5lcyByZXBvcnQ6Cj4gPj4gCj4g
Pj4gIyBjYXQgL3N5cy9tb2R1bGUvaXBtaV9tc2doYW5kbGVyL3BhcmFtZXRlcnMvcGFuaWNfb3AK
PiA+PiBzdHJpbmcKPiA+IAo+ID4gQXQgdGhpcyBwb2ludCwgSSBoYXZlIG5vIGlkZWEuICBJJ2Qg
aGF2ZSB0byBzdGFydCBhZGRpbmcgcHJpbnRrcyBpbnRvCj4gPiB0aGUgY29kZSBhbmQgY2F1c2Ug
Y3Jhc2hlcyB0byBzZWUgd2hhdCBpcyBoYXBwaW5nLgo+ID4gCj4gPiBNYXliZSBzb21ldGhpbmcg
aXMgZ2V0dGluZyBpbiB0aGUgd2F5IG9mIHRoZSBwYW5pYyBub3RpZmllcnMgYW5kIGRvaW5nCj4g
PiBzb21ldGhpbmcgdG8gcHJldmVudCB0aGUgSVBNSSBkcml2ZXIgZnJvbSB3b3JraW5nLgo+ID4g
Cj4gPiAtY29yZXkKPiA+IAo+ID4+IAo+ID4+IAo+ID4+PiBPbiAyOC4gRmViIDIwMjMsIGF0IDE4
OjA0LCBDb3JleSBNaW55YXJkIDxtaW55YXJkQGFjbS5vcmc+IHdyb3RlOgo+ID4+PiAKPiA+Pj4g
T2gsIEkgZm9yZ290LiAgWW91IGNhbiBsb29rIGF0IHBhbmljX29wIGluIC9zeXMvbW9kdWxlL2lw
bWlfbXNnaGFuZGxlci9wYXJhbWV0ZXJzL3BhbmljX29wCj4gPj4+IAo+ID4+PiAtY29yZXkKPiA+
Pj4gCj4gPj4+IE9uIFR1ZSwgRmViIDI4LCAyMDIzIGF0IDA1OjQ4OjA3UE0gKzAxMDAsIENocmlz
dGlhbiBUaGV1bmUgdmlhIE9wZW5pcG1pLWRldmVsb3BlciB3cm90ZToKPiA+Pj4+IEhpLAo+ID4+
Pj4gCj4gPj4+Pj4gT24gMjguIEZlYiAyMDIzLCBhdCAxNzozNiwgQ29yZXkgTWlueWFyZCA8bWlu
eWFyZEBhY20ub3JnPiB3cm90ZToKPiA+Pj4+PiAKPiA+Pj4+PiBPbiBUdWUsIEZlYiAyOCwgMjAy
MyBhdCAwMjo1MzoxMlBNICswMTAwLCBDaHJpc3RpYW4gVGhldW5lIHZpYSBPcGVuaXBtaS1kZXZl
bG9wZXIgd3JvdGU6Cj4gPj4+Pj4+IEhpLAo+ID4+Pj4+PiAKPiA+Pj4+Pj4gSeKAmXZlIGJlZW4g
dHJ5aW5nIHRvIGRlYnVnIHRoZSBQQU5JQyBhbmQgT0VNIHN0cmluZyBoYW5kbGluZyBhbmQgYW0g
cnVubmluZyBvdXQgb2YgaWRlYXMgd2hldGhlciB0aGlzIGlzIGEgYnVnIG9yIHdoZXRoZXIgc29t
ZXRoaW5nIHNvIHN1YnRsZSBoYXMgY2hhbmdlZCBpbiBteSBjb25maWcgdGhhdCBJ4oCZbSBqdXN0
IG5vdCBzZWVpbmcgaXQuCj4gPj4+Pj4+IAo+ID4+Pj4+PiAoTm90ZTogSeKAmW0gd2lsbGluZyB0
byBwYXkgZm9yIGNvbnN1bHRpbmcuKQo+ID4+Pj4+IAo+ID4+Pj4+IFByb2JhYmx5IG5vdCBuZWNl
c3NhcnkuCj4gPj4+PiAKPiA+Pj4+IFRoYW5rcyEgVGhlIG9mZmVyIGFsd2F5cyBzdGFuZHMuIElm
IHdlIHNob3VsZCBldmVyIG1lZXQgSeKAmW0gYWxzbyBhYmxlIHRvIHBheSBpbiBiZXZlcmFnZXMu
IDspCj4gPj4+PiAKPiA+Pj4+Pj4gSSBoYXZlIG1hY2hpbmVzIHRoYXQgd2XigJl2ZSBtb3ZlZCBm
cm9tIGFuIG9sZGVyIHNldHVwIChHZW50b28sIChtb3N0bHkpIHZhbmlsbGEga2VybmVsIDQuMTku
MTU3KSB0byBhIG5ld2VyIHNldHVwIChOaXhPUywgKG1vc3RseSkgdmFuaWxsYSBrZXJuZWwgNS4x
MC4xNTkpIGFuZCBJ4oCZbSBub3cgZXhwZXJpZW5jaW5nIGNyYXNoZXMgdGhhdCBzZWVtIHRvIGJl
IGtlcm5lbCBwYW5pY3MgYnV0IGRvIG5vdCBnZXQgdGhlIHVzdWFsIG1lc3NhZ2VzIGluIHRoZSBJ
UE1JIFNFTC4KPiA+Pj4+PiAKPiA+Pj4+PiBJIGp1c3QgdGVzdGVkIG9uIHN0b2NrIDUuMTAuMTU5
IGFuZCBpdCB3b3JrZWQgd2l0aG91dCBpc3N1ZS4gIEV2ZXJ5dGhpbmcKPiA+Pj4+PiB5b3UgaGF2
ZSBiZWxvdyBsb29rcyBvay4KPiA+Pj4+PiAKPiA+Pj4+PiBDYW4geW91IHRlc3QgYnkgY2F1c2lu
ZyBhIGNyYXNoIHdpdGg6Cj4gPj4+Pj4gCj4gPj4+Pj4gZWNobyBjID4vcHJvYy9zeXNycS10cmln
Z2VyCj4gPj4+Pj4gCj4gPj4+Pj4gYW5kIHNlZSBpZiBpdCB3b3Jrcz8KPiA+Pj4+IAo+ID4+Pj4g
WWVhaCwgYWxyZWFkeSB0cmllZCB0aGF0IGFuZCB1bmZvcnR1bmF0ZWx5IHRoYXQgX2RvZXNu4oCZ
dF8gd29yay4KPiA+Pj4+IAo+ID4+Pj4+IEl0IHNvdW5kcyBsaWtlIHlvdSBhcmUgaGF2aW5nIHNv
bWUgdHlwZSBvZiBjcmFzaCB0aGF0IHlvdSB3b3VsZCBub3JtYWxseQo+ID4+Pj4+IHVzZSB0aGUg
SVBNSSBsb2dzIHRvIGRlYnVnLiAgSG93ZXZlciwgdGhleSBhcmVuJ3QgcGVyZmVjdCwgdGhlIHN5
c3RlbQo+ID4+Pj4+IGhhcyB0byBzdGF5IHVwIGxvbmcgZW5vdWdoIHRvIGdldCB0aGVtIGludG8g
dGhlIGV2ZW50IGxvZy4KPiA+Pj4+IAo+ID4+Pj4gSSB0aGluayB0aGV5IGFyZSBzdGF5aW5nIHVw
IGxvbmcgZW5vdWdoIGJlY2F1c2UgYSBwYW5pYyB0cmlnZ2VycyB0aGUgMjU1IHNlY29uZCBidW1w
IGluIHRoZSB3YXRjaGRvZyBhbmQgb25seSB0aGVuIHBhc3Mgb24uIEhvd2V2ZXIsIGnigJl2ZSBh
bHNvIG5vdGljZWQgdGhhdCB0aGUga2VybmVsIF9zaG91bGRfIGJlIHJlYm9vdGluZyBhZnRlciBh
IHBhbmljIG11Y2ggZmFzdGVyIChhbmQgbm90IHJlbHkgb24gdGhlIHdhdGNoZG9nKSBhbmQgdGhh
dCBkb2VzbuKAmXQgaGFwcGVuIGVpdGhlci4gKFNvcnJ5IHRoaXMganVzdCBwb3BwZWQgZnJvbSB0
aGUgYmFjayBvZiBteSBoZWFkKS4KPiA+Pj4+IAo+ID4+Pj4+IEluIHRoaXMgc2l0dWF0aW9uLCBn
ZXR0aW5nIGEgc2VyaWFsIGNvbnNvbGUgKHByb2JhYmx5IHRocm91Z2ggSVBNSQo+ID4+Pj4+IFNl
cmlhbCBvdmVyIExBTikgYW5kIGdldHRpbmcgdGhlIGNvbnNvbGUgb3V0cHV0IG9uIGEgY3Jhc2gg
aXMgcHJvYmFibHkKPiA+Pj4+PiB5b3VyIGJlc3Qgb3B0aW9uLiAgWW91IGNhbiB1c2UgaXBtaXRv
b2wgZm9yIHRoaXMsIG9yIEkgaGF2ZSBhIGxpYnJhcnkKPiA+Pj4+PiB0aGF0IGlzIGFibGUgdG8g
bWFrZSBjb25uZWN0aW9ucyB0byBzZXJpYWwgcG9ydHMsIGluY2x1ZGluZyB0aHJvdWdoIElQTUkK
PiA+Pj4+PiBTb0wuCj4gPj4+PiAKPiA+Pj4+IFl1cC4gQmVlbiB0aGVyZSwgdG9vLiA6KQo+ID4+
Pj4gCj4gPj4+PiBVbmZvcnR1bmF0ZWx5IHdl4oCZcmUgY3VycmVudGx5IGNoYXNpbmcgc29tZXRo
aW5nIHRoYXQgcG9wcyB1cCB2ZXJ5IHJhbmRvbWx5IG9uIHNvbWV3aGF0IG9kZCBtYWNoaW5lcyBh
bmQgSSBhbHNvIGhhdmUgdGhlIGZlZWxpbmcgdGhhdCBpdOKAmXMgc3lzdGVtYXRpY2FsbHkgYnJv
a2VuIHJpZ2h0IG5vdyAoYXMgdGhlIOKAnGVjaG8gY+KAnSBkb2VzbuKAmXQgd29yaykuCj4gPj4+
PiAKPiA+Pj4+IFRoYW5rcyBhIGxvdCwKPiA+Pj4+IENocmlzdGlhbgo+ID4+Pj4gCj4gPj4+PiAt
LSAKPiA+Pj4+IENocmlzdGlhbiBUaGV1bmUgwrcgY3RAZmx5aW5nY2lyY3VzLmlvIMK3ICs0OSAz
NDUgMjE5NDAxIDAKPiA+Pj4+IEZseWluZyBDaXJjdXMgSW50ZXJuZXQgT3BlcmF0aW9ucyBHbWJI
IMK3IGh0dHBzOi8vZmx5aW5nY2lyY3VzLmlvCj4gPj4+PiBMZWlwemlnZXIgU3RyLiA3MC83MSDC
tyAwNjEwOCBIYWxsZSAoU2FhbGUpIMK3IERldXRzY2hsYW5kCj4gPj4+PiBIUiBTdGVuZGFsIEhS
QiAyMTE2OSDCtyBHZXNjaMOkZnRzZsO8aHJlcjogQ2hyaXN0aWFuIFRoZXVuZSwgQ2hyaXN0aWFu
IFphZ3JvZG5pY2sKPiA+Pj4+IAo+ID4+Pj4gCj4gPj4+PiAKPiA+Pj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4+PiBPcGVuaXBtaS1kZXZlbG9w
ZXIgbWFpbGluZyBsaXN0Cj4gPj4+PiBPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9y
Z2UubmV0Cj4gPj4+PiBodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5m
by9vcGVuaXBtaS1kZXZlbG9wZXIKPiA+PiAKPiA+PiBMaWViZSBHcsO8w59lLAo+ID4+IENocmlz
dGlhbiBUaGV1bmUKPiA+PiAKPiA+PiAtLSAKPiA+PiBDaHJpc3RpYW4gVGhldW5lIMK3IGN0QGZs
eWluZ2NpcmN1cy5pbyDCtyArNDkgMzQ1IDIxOTQwMSAwCj4gPj4gRmx5aW5nIENpcmN1cyBJbnRl
cm5ldCBPcGVyYXRpb25zIEdtYkggwrcgaHR0cHM6Ly9mbHlpbmdjaXJjdXMuaW8KPiA+PiBMZWlw
emlnZXIgU3RyLiA3MC83MSDCtyAwNjEwOCBIYWxsZSAoU2FhbGUpIMK3IERldXRzY2hsYW5kCj4g
Pj4gSFIgU3RlbmRhbCBIUkIgMjExNjkgwrcgR2VzY2jDpGZ0c2bDvGhyZXI6IENocmlzdGlhbiBU
aGV1bmUsIENocmlzdGlhbiBaYWdyb2RuaWNrCj4gPj4gCj4gCj4gTGllYmUgR3LDvMOfZSwKPiBD
aHJpc3RpYW4gVGhldW5lCj4gCj4gLS0gCj4gQ2hyaXN0aWFuIFRoZXVuZSDCtyBjdEBmbHlpbmdj
aXJjdXMuaW8gwrcgKzQ5IDM0NSAyMTk0MDEgMAo+IEZseWluZyBDaXJjdXMgSW50ZXJuZXQgT3Bl
cmF0aW9ucyBHbWJIIMK3IGh0dHBzOi8vZmx5aW5nY2lyY3VzLmlvCj4gTGVpcHppZ2VyIFN0ci4g
NzAvNzEgwrcgMDYxMDggSGFsbGUgKFNhYWxlKSDCtyBEZXV0c2NobGFuZAo+IEhSIFN0ZW5kYWwg
SFJCIDIxMTY5IMK3IEdlc2Now6RmdHNmw7xocmVyOiBDaHJpc3RpYW4gVGhldW5lLCBDaHJpc3Rp
YW4gWmFncm9kbmljawo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxv
cGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9s
aXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
