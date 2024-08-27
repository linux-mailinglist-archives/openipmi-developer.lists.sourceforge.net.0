Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DFE4961595
	for <lists+openipmi-developer@lfdr.de>; Tue, 27 Aug 2024 19:35:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sj06f-0000bZ-Pj;
	Tue, 27 Aug 2024 17:35:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1sj06c-0000bQ-8v
 for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Aug 2024 17:35:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qeqtvSLiG0Fv4La130NDDOGI+z1tSZq/AnSFuvMcc7E=; b=bY9XFziwER8t8qlQNfr62PqNbq
 nOpwOlFB6chTKagnWazaQs3B8FLwxX7wubJ1AfgZJ3Z4RisLgZZQ6JxZlL9H6skojfFc5LyYhufwt
 URNxTp05F/Ee/IiqbQXugXl+/taRjvnQLiX+Qah0UfuIVshGLQ0QMfe6gMCvhP6N80Tc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qeqtvSLiG0Fv4La130NDDOGI+z1tSZq/AnSFuvMcc7E=; b=WjSs8v/Xbtor6nvWrxNZ39Fglh
 HqCWAEAClrUCCkt3dTWHqn7NQ3zwjvTeQ5By9blrBaSJdSFgAkX7Gb4ormjUt/5ZtcbQwU8Fku7xq
 LDEZUyeVK9/IK4CY4guE/ElFWaXpVEAvsj9GmnOgWFejaPj9LlUIDt6minJuxDcQcks4=;
Received: from mail-lf1-f51.google.com ([209.85.167.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sj06a-0001K6-Qh for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Aug 2024 17:35:45 +0000
Received: by mail-lf1-f51.google.com with SMTP id
 2adb3069b0e04-533488ffb03so7087765e87.3
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 27 Aug 2024 10:35:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1724780138; x=1725384938;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qeqtvSLiG0Fv4La130NDDOGI+z1tSZq/AnSFuvMcc7E=;
 b=MnJzMe9Ghd8yKgrLazL6vb08tybmjD5RTUaSdR6hx2mt6HM0wdBjMMK6ghL7K4Z794
 /IalmbwOf6UTHn2JViqDFQj1t2p/duOJm1j22MPGqK9X+cuNda8Wb9tvvO/ozTbw4VKj
 h9xsNYo1+LdCBLEOcPkGrfIFUKP5crpxtKMgTJSb0OW2LDP90Br3jRv/evEB0RpQ5IiJ
 mTWjsXFIujAYGoYBrLS9XPrc4XOgRqeSv+qfqlpr+y9ffhUvjmO+bHfonfa6BqikuBHZ
 kqMgbPDtl7NoOmbS81E41qxjgo6ir1PLsur1mu4EMPc5R6jNig6mzUTuKVOzrJiiALv9
 bO/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724780138; x=1725384938;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=qeqtvSLiG0Fv4La130NDDOGI+z1tSZq/AnSFuvMcc7E=;
 b=oaI/v5kEw82ieE8dzeTa4jj21M3qP/uX0GtJfAFlgwf58MDs2ew1qsKy35/hzjYorr
 mxxOJxc1Dq5ACvrSOwRvs18Wywnz+7e0JyjZJEIsoSihSOBZpg/NPTc/7OYx/k3SunYP
 lBSU/HP/Wlb+UhVo8prjNGeu+XQZrn5uNokNyOHHKRKIxRbNXsBZyr0SUCVH+E4kZHf5
 xB+f1ji+wIL3ls63fUzobf8EQhGEqGdS+RgPDbrfU5JeiBjKuQKRHwvIbu39zQV6Ou7T
 jyxCO/69SkDijXPPHcOWJxgwWAOnYOlx79ObSuruR7l69SJUFgi8Qt1UHqPeo+4WAn1r
 wO6w==
X-Gm-Message-State: AOJu0YwwN7iJ279TLLhnou6RiWQei3oTg4iYUgQ6BlFcxbiByLYZWvp0
 OA0wRWaNKgsDoB6/3lNGoOg+wwq+ULXWxnFsZgAdhMBUM0xIhQERVeBgsGqPpJqD63aqLydQvXk
 vIGhpjuRz0g8gZgOZ+ugFnZGyCANXVj041l4EJw==
X-Google-Smtp-Source: AGHT+IGDzw6xOFg69o+nL1lXDZJGOkwIsXBvP8dc0ifXCP7lOFG1hKBTlEX8mTLgMvw68SGAhPdisLeM1RPI3fyfOZM=
X-Received: by 2002:a05:6512:3a8a:b0:52c:e4cf:4f31 with SMTP id
 2adb3069b0e04-5343886beeemr9467448e87.49.1724780137465; Tue, 27 Aug 2024
 10:35:37 -0700 (PDT)
MIME-Version: 1.0
References: <ZsdnOv9F0g2hkslJ@mail.minyard.net> <Zs3rfSUTQVyAkKPA@redhat.com>
In-Reply-To: <Zs3rfSUTQVyAkKPA@redhat.com>
From: Corey Minyard <corey@minyard.net>
Date: Tue, 27 Aug 2024 12:35:25 -0500
Message-ID: <CAB9gMfq7CYnJ4v02eC4Cvk4fSJFFTRpGHQsQ3zqLaupXjG0vkw@mail.gmail.com>
To: Pavel Cahyna <pcahyna@redhat.com>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Aug 27, 2024 at 10:07 AM Pavel Cahyna <pcahyna@redhat.com>
    wrote: > > Hello Corey, > > On Thu, Aug 22, 2024 at 11:28:42AM -0500, Corey
    Minyard via Openipmi-developer wrote: > > There was a b [...] 
 
 Content analysis details:   (-0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.167.51 listed in sa-accredit.habeas.com]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.167.51 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.167.51 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sj06a-0001K6-Qh
Subject: Re: [Openipmi-developer] CVE-2024-42934 for OpenIPMI
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
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVHVlLCBBdWcgMjcsIDIwMjQgYXQgMTA6MDfigK9BTSBQYXZlbCBDYWh5bmEgPHBjYWh5bmFA
cmVkaGF0LmNvbT4gd3JvdGU6Cj4KPiBIZWxsbyBDb3JleSwKPgo+IE9uIFRodSwgQXVnIDIyLCAy
MDI0IGF0IDExOjI4OjQyQU0gLTA1MDAsIENvcmV5IE1pbnlhcmQgdmlhIE9wZW5pcG1pLWRldmVs
b3BlciB3cm90ZToKPiA+IFRoZXJlIHdhcyBhIGJ1ZyBmb3VuZCBieSBBV1MgU2VjdXJpdHkgdGhh
dCBhZmZlY3RlZCB0aGUgSVBNSSBzaW11bGF0b3IsCj4gPiBpcG1pX3NpbS4gSXQgZG9lcyBOT1Qg
YWZmZWN0IHRoZSBtYWluIGxpYnJhcnksIGp1c3QgdGhlIHNpbXVsYXRvci4gVGhpcwo+ID4gaXMg
bWFpbmx5IHVzZWQgZm9yIHRlc3RpbmcgKGJ5IE9wZW5JUE1JIGFuZCBvdGhlcnMpIGJ1dCBJIGFt
IGZhaXJseSBzdXJlCj4gPiB0aGF0IHNvbWUgcGVvcGxlIGFyZSB1c2luZyB0aGlzIGluIHByb2R1
Y3Rpb24gc3lzdGVtcyB0byBjb250cm9sIFFFTVUKPiA+IHN5c3RlbXMgYW5kIHRvIHByb3ZpZGUg
c2VyaWFsIG92ZXIgTEFOIGFjY2VzcyB0byB0aG9zZSBzeXN0ZW1zLgo+ID4gVW5mb3J0dW5hdGVs
eSwgSSBkbyBub3Qga25vdyB3aG8gaXMgdXNpbmcgaXQgZm9yIHRoaXMgcHVycG9zZS4KPgo+IHJl
YWRpbmcgdGhlIGNvZGUsIGlzIG15IHVuZGVyc3RhbmRpbmcgY29ycmVjdCB0aGF0IGl0IGFmZmVj
dHMgbm90IGp1c3QKPiB0aGUgaXBtaV9zaW0gc2ltdWxhdG9yLCBidXQgYWxzbyB0aGUgaXBtaWxh
biBkYWVtb24/IFRoZSBtYW51YWwgcGFnZQo+IGRlc2NyaWJlcyBpdCBhcwo+ICJUaGUgIGlwbWls
YW4gIGRhZW1vbiBhbGxvd3MgYW4gSVBNSSBzeXN0ZW0gaW50ZXJmYWNlIHVzaW5nIHRoZSBPcGVu
SVBNSQo+IGRldmljZSBkcml2ZXIgdG8gYmUgYWNjZXNzZWQgdXNpbmcgdGhlIElQTUkgMS41IG9y
IDIuMCBMQU4gcHJvdG9jb2wuIgo+IHdoaWNoIHNvdW5kcyBsaWtlIHNvbWV0aGluZyB0aGF0IG1p
Z2h0IGJlIHVzZWQgb24gcHJvZHVjdGlvbiBzeXN0ZW1zLAo+IGJ1dCBJIGFsc28gZG9uJ3Qga25v
dyBob3cgb2Z0ZW4gdGhhdCB3b3VsZCBhY3R1YWxseSBoYXBwZW4gKHVzaW5nIHN1Y2ggYQo+IGRh
ZW1vbiBzZWVtcyB0byBkZWZlYXQgdGhlIHB1cnBvc2Ugb2YgdGhlIElQTUkgTEFOIGludGVyZmFj
ZSB3aGljaCBpcyB0bwo+IGNvbnRyb2wgdGhlIHN5c3RlbSBldmVuIHdoZW4gb2ZmbGluZSkuCgpZ
ZXMsIGl0IHdvdWxkIGFsc28gYWZmZWN0IHRoZSBpcG1pbGFuIGRhZW1vbi4gIEkgd2FzIG5vdCBh
c3N1bWluZwphbnlvbmUgd2FzIHVzaW5nIHRoYXQgZm9yIHByb2R1Y3Rpb24gc3lzdGVtcywgYnV0
IG1heWJlIEknbSB3cm9uZy4KClRoYW5rcyBmb3IgYXNraW5nLgoKLWNvcmV5Cgo+Cj4gQmVzdCBy
ZWdhcmRzLCBQYXZlbAo+Cj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdAo+IE9wZW5pcG1p
LWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKPiBodHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFp
bGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6
Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVy
Cg==
