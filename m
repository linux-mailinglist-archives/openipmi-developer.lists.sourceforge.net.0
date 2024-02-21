Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB0085E530
	for <lists+openipmi-developer@lfdr.de>; Wed, 21 Feb 2024 19:08:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rcr18-0007c3-Ve;
	Wed, 21 Feb 2024 18:08:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1rcr18-0007br-0O
 for openipmi-developer@lists.sourceforge.net;
 Wed, 21 Feb 2024 18:08:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yE3xYE9b0PADKF8ltORqAx3XVvlJ9P1Y3jeB29+/qOg=; b=brkk+lst63CLLMVsCQ1c8ambC7
 s/jlT/PtEsVb4ONqq4unpZ7PbOo1D1uJbetSO5RoIQw9fvAPPl34uqPl19FShkQbBiqiDkglO63To
 Xz3ePstugac12jBBs6aY/DfFXw+aApUMtIGDuSx52JZixiPm1bOOriQfq+arQWroO1oY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yE3xYE9b0PADKF8ltORqAx3XVvlJ9P1Y3jeB29+/qOg=; b=YQTI1PjMERpQ60dAOFIqE+ZQdY
 QbvkjvmI+GEyNmNL4EwtvYMk5B0/inObBW04sngKeqo/UbGAmit4V7973F05jIFDECAmXj3UMkI13
 TG66YFicPychqwytVpjn8bO3t+WONKaqjKiujtStCuF9qE2S3u8y+dTnpVuKMCZmUh84=;
Received: from mail-oo1-f44.google.com ([209.85.161.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rcr16-0000Zp-DN for openipmi-developer@lists.sourceforge.net;
 Wed, 21 Feb 2024 18:08:26 +0000
Received: by mail-oo1-f44.google.com with SMTP id
 006d021491bc7-59f7d59d3f1so454236eaf.1
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 21 Feb 2024 10:08:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1708538900; x=1709143700; darn=lists.sourceforge.net;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:from:to:cc:subject:date:message-id:reply-to;
 bh=yE3xYE9b0PADKF8ltORqAx3XVvlJ9P1Y3jeB29+/qOg=;
 b=Rh9nh04fWco1nsksm0vCkSSYl8z/2Fugoz/KH3cY+5YRIKpL5ZtWuRNQw5FfrUqZEE
 b9FH9NTJjBlLARL/mTbymMUnTRfPv6PFF1TIoBozGflOaDap9HYw2dcibVxJyGeZlzZ6
 0bh31iHSVWCkvCcVlFeY+dDnD7PdKxP6b/0G1MrPUx0v1Q3DGh0b0i+ALf/QGVvPP3RL
 b962Xp9HLVBDouxxGU/zIdGthDbeFA++aqV5jJkXvcDGah1MYxmsSVBR7CCpDfHBprry
 GsaIUHCq3nGhn33nDdNnPqBQNJra0QJanlo83vtB6RCG7ZxOrQ4+kx2Mx7H5V+XQlHy2
 fKkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708538900; x=1709143700;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=yE3xYE9b0PADKF8ltORqAx3XVvlJ9P1Y3jeB29+/qOg=;
 b=QkjJGVLfZ0ots0UgpTVFlObZMDeEqReXgquHup/SWq8xWcvdWQpkY+9/5ExrWXNOLO
 3EnRrCrl+oJlCvejblGgfANMBjbbeIB3ekidB5LRVPhw2kMCVbaf/DQ2JCz6BxHpVvMs
 pkDuqfL61BgHEuBWuXCEnjkytbjECCB9sRru3iv01A68RK1KE1jUcj7lPRz91qioaAdi
 FGFiaGN1D8G25Adj3jOMRABj4QDl0BQ8XOmZPPBXlPilsmvXegMiK0jVlzshLUlyeTES
 lgQP6s81qKXNfdukegpw8s7npvZyApFxQI1Qndquvx8yrJKbZMg3UVYETGI19cmV9HqO
 RyNQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUllfjlC34jhs7PtWTRAP5KwJtgwdZhjEdkiFkz9Q0PdRkhy5GpEkqJRgzBqmTZTsyHcW+D+EYx0CtyEIT9IElYFLe1w88vOmTA9oU0QdmHuYFFz7I17imu
X-Gm-Message-State: AOJu0YyXeXdsY0ERC/LBnJwqsSwsrYX/qabur/r7cicdsclRY6ysTvmS
 GVY1dwH3t1rAA1ZhEypSU45BaIrRNJtZEAmwCjkgEvfPISFncARgygmdo/k=
X-Google-Smtp-Source: AGHT+IE7Jl89TMdslT9Xstr1epQWCcXolp3sqaBdeNYzQrNiseiNxKWZkq7GYlWCsP8bfbZaGYK6yg==
X-Received: by 2002:a4a:d2ce:0:b0:5a0:2a9:574b with SMTP id
 j14-20020a4ad2ce000000b005a002a9574bmr5993289oos.9.1708538899972; 
 Wed, 21 Feb 2024 10:08:19 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 g6-20020a9d6206000000b006e2df00aaa8sm1665305otj.70.2024.02.21.10.08.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Feb 2024 10:08:19 -0800 (PST)
Received: from mail.minyard.net (unknown [IPv6:2001:470:b8f6:1d::35])
 by serve.minyard.net (Postfix) with ESMTPSA id 412431800B8;
 Wed, 21 Feb 2024 18:08:18 +0000 (UTC)
Date: Wed, 21 Feb 2024 12:08:16 -0600
From: Corey Minyard <minyard@acm.org>
To: Andrew Geissler <geissonator@gmail.com>
Message-ID: <ZdY8EDfeePse3c1s@mail.minyard.net>
References: <20240220123615.963916-1-geissonator@gmail.com>
 <a9169894-6972-49c0-a1d4-d80863f5b511@molgen.mpg.de>
 <ZdT+eThnYqb3iawF@mail.minyard.net>
 <9680ad7d7a48fc36a0572dc2286a1229a29341fe.camel@codeconstruct.com.au>
 <527F52AB-0070-43EA-BE82-945280CA2AEE@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <527F52AB-0070-43EA-BE82-945280CA2AEE@gmail.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Feb 21, 2024 at 10:57:38AM -0600, Andrew Geissler
   wrote: > > > > On Feb 20, 2024, at 4:36 PM, Andrew Jeffery <andrew@codeconstruct.com.au>
    wrote: > > > > On Tue, 2024-02-20 at 13:33 -0600, C [...] 
 
 Content analysis details:   (0.4 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.161.44 listed in list.dnswl.org]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.161.44 listed in wl.mailspike.net]
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rcr16-0000Zp-DN
Subject: Re: [Openipmi-developer] [PATCH] ipmi: kcs: Update OBF poll timeout
 to reduce latency
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, openbmc@lists.ozlabs.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 openipmi-developer@lists.sourceforge.net,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gV2VkLCBGZWIgMjEsIDIwMjQgYXQgMTA6NTc6MzhBTSAtMDYwMCwgQW5kcmV3IEdlaXNzbGVy
IHdyb3RlOgo+IAo+IAo+ID4gT24gRmViIDIwLCAyMDI0LCBhdCA0OjM24oCvUE0sIEFuZHJldyBK
ZWZmZXJ5IDxhbmRyZXdAY29kZWNvbnN0cnVjdC5jb20uYXU+IHdyb3RlOgo+ID4gCj4gPiBPbiBU
dWUsIDIwMjQtMDItMjAgYXQgMTM6MzMgLTA2MDAsIENvcmV5IE1pbnlhcmQgd3JvdGU6Cj4gPj4g
T24gVHVlLCBGZWIgMjAsIDIwMjQgYXQgMDQ6NTE6MjFQTSArMDEwMCwgUGF1bCBNZW56ZWwgd3Jv
dGU6Cj4gPj4+IERlYXIgQW5kcmV3LAo+ID4+IAo+ID4+IEl0J3MgYmVjYXVzZSBpbmNyZWFzaW5n
IHRoYXQgbnVtYmVyIGNhdXNlcyBpdCB0byBwb2xsIGxvbmdlciBmb3IgdGhlCj4gPj4gZXZlbnQs
IHRoZSBob3N0IHRha2VzIGxvbmdlciB0aGFuIDEwMHVzIHRvIGdlbmVyYXRlIHRoZSBldmVudCwg
YW5kIGlmCj4gPj4gdGhlIGV2ZW50IGlzIG1pc3NlZCB0aGUgdGltZSB3aGVuIGl0IGlzIGNoZWNr
ZWQgYWdhaW4gaXMgdmVyeSBsb25nLgo+ID4+IAo+ID4+IFBvbGxpbmcgZm9yIDEwMHVzIGlzIGFs
cmVhZHkgcHJldHR5IGV4dHJlbWUuIDIwMHVzIGlzIHJlYWxseSB0b28gbG9uZy4KPiA+PiAKPiA+
PiBUaGUgcmVhbCBwcm9ibGVtIGlzIHRoYXQgdGhlcmUgaXMgbm8gaW50ZXJydXB0IGZvciB0aGlz
LiAgSSdkIGFsc28gZ3Vlc3MKPiA+PiB0aGVyZSBpcyBubyBpbnRlcnJ1cHQgb24gdGhlIGhvc3Qg
c2lkZSwgYmVjYXVzZSB0aGF0IHdvdWxkIHNvbHZlIHRoaXMKPiA+PiBwcm9ibGVtLCB0b28sIGFz
IGl0IHdvdWxkIGNlcnRhaW5seSBnZXQgYXJvdW5kIHRvIGhhbmRsaW5nIHRoZSBpbnRlcnVwdAo+
ID4+IGluIDEwMHVzLiAgSSdtIGFzc3VtaW5nIHRoZSBob3N0IGRyaXZlciBpcyBub3QgdGhlIExp
bnV4IGRyaXZlciwgYXMgaXQKPiA+PiBzaG91bGQgYWxzbyBoYW5kbGUgdGhpcyBpbiBhIHRpbWVs
eSBtYW5uZXIsIGV2ZW4gd2hlbiBwb2xsaW5nLgo+ID4gCj4gPiBJIGV4cGVjdCB0aGUgaXNzdWVz
IEFuZHJldyBHIGlzIG9ic2VydmluZyBhcmUgd2l0aCB0aGUgUG93ZXIxMCBib290Cj4gPiBmaXJt
d2FyZS4gVGhlIGJvb3QgZmlybXdhcmUgb25seSBwb2xscy4gVGhlIHJ1bnRpbWUgZmlybXdhcmUg
ZW5hYmxlcwo+ID4gaW50ZXJydXB0cy4KPiAKPiBZZXAsIHRoaXMgaXMgd2l0aCB0aGUgbG93IGxl
dmVsIGhvc3QgYm9vdCBmaXJtd2FyZS4KPiBBbHNvLCBmdXJ0aGVyIHRlc3Rpbmcgb3ZlciBuaWdo
dCBzaG93ZWQgdGhhdCAyMDB1cyB3YXNu4oCZdCBlbm91Z2ggZm9yCj4gb3VyIGxhcmdlciBFdmVy
ZXN0IFAxMCBtYWNoaW5lcywgSSBuZWVkZWQgdG8gZ28gdG8gMzAwdXMuIEFzIHdlCj4gd2VyZSBz
dHJ1Z2dsaW5nIHRvIGFsbG93IDIwMHVzLCBJIGFzc3VtZSAzMDB1cyBpcyBnb2luZyB0byBiZSBh
IG5vLWdvLgoKSXQgc2VlbXMgb2RkIHRvIG1lIHRoYXQgZmlybXdhcmUgcG9sbGluZyB3b3VsZCBi
ZSBhbiBpc3N1ZS4gIFVzdWFsbHksCndpdGggZmlybXdhcmUsIHlvdSBoYXZlIGl0IGp1c3Qgc3Bp
bm5pbmcgd2FpdGluZyBmb3Igc29tZXRoaW5nLiAgQXQKbGVhc3QgaW4gdGhlIGZpcm13YXJlIEkg
d29ya2VkIHdpdGguCgpJJ20gbm90IGZhbWlsaWFyIHdpdGggdGhpcyBmaXJtd2FyZSwgdGhvdWdo
LCBtYXliZSBpdCBoYXMgdGltZXJzIGFuZApzdWNoIGFuZCBwYXJhbGxlbCBleGVjdXRpb24uICBD
YW4gdGhpcyBiZSBmaXhlZCBvbiB0aGUgZmlybXdhcmUgc2lkZT8KCj4gCj4gPj4gCj4gPiAKPiA+
PiAKPiA+PiBUaGUgcmlnaHQgd2F5IHRvIGZpeCB0aGlzIGlzIHByb2JhYmx5IHRvIGRvIHRoZSBz
YW1lIHRoaW5nIHRoZSBob3N0IHNpZGUKPiA+PiBMaW51eCBkcml2ZXIgZG9lcy4gIEl0IGhhcyBh
IGtlcm5lbCB0aHJlYWQgdGhhdCBpcyBraWNrZWQgb2ZmIHRvIGRvCj4gPj4gdGhpcy4gIFVuZm9y
dHVuYXRlbHksIHRoYXQncyBtb3JlIGNvbXBsaWNhdGVkIHRvIGltcGxlbWVudCwgYnV0IGl0Cj4g
Pj4gYXZvaWRzIHBvbGxpbmcgaW4gdGhpcyBsb2NhdGlvbiAod2hpY2ggY2F1c2VzIGxhdGVuY3kg
aXNzdWVzIG9uIHRoZSBCTUMKPiA+PiBzaWRlKSBhbmQgbGV0cyB5b3UgcG9sbCBsb25nZXIgd2l0
aG91dCBjYXVzaW5nIGlzc3Vlcy4KPiA+IAo+ID4gSW4gQW5kcmV3IEcncyBjYXNlIGhlJ3MgdGFs
a2luZyBNQ1RQIG92ZXIgS0NTIHVzaW5nIGEgdmVuZG9yLWRlZmluZWQKPiA+IHRyYW5zcG9ydCBi
aW5kaW5nICh0aGF0IGFsc28gbGV2ZXJhZ2VzIExQQyBGV0ggY3ljbGVzIGZvciBidWxrIGRhdGEK
PiA+IHRyYW5zZmVycylbMV0uIEkgdGhpbmsgaXQgY291bGQgaGF2ZSB0YWtlbiBtb3JlIGluc3Bp
cmF0aW9uIGZyb20gdGhlCj4gPiBJUE1JIEtDUyBwcm90b2NvbDogSXQgbWlnaHQgYmUgd29ydGgg
YW4gZXhwZXJpbWVudCB0byB3cml0ZSB0aGUgZHVtbXkKPiA+IGNvbW1hbmQgdmFsdWUgdG8gSURS
IGZyb20gdGhlIGhvc3Qgc2lkZSBhZnRlciBlYWNoIE9EUiByZWFkIHRvIHNpZ25hbAo+ID4gdGhl
IGhvc3QncyBjbGVhcmluZyBvZiBPQkYgKG5vIGludGVycnVwdCBmb3IgdGhlIEJNQykgd2l0aCBh
biBJQkYKPiA+ICh3aGljaCBkb2VzIGludGVycnVwdCB0aGUgQk1DKS4gQW5kIGRvaW5nIHRoZSBv
YnZlcnNlIGZvciB0aGUgQk1DLiBTb21lCj4gPiBicmllZiB0aG91Z2h0IHN1Z2dlc3RzIHRoYXQg
aWYgdGhlIGR1bW15IHZhbHVlIGlzIHJlYWQgdGhlcmUncyBubyBuZWVkCj4gPiB0byBzZW5kIGEg
ZHVtbXkgdmFsdWUgaW4gcmVwbHkgKGFzIGl0J3MgYW4gaW5kaWNhdG9yIHRvIHJlYWQgdGhlIHN0
YXR1cwo+ID4gcmVnaXN0ZXIpLiBXaXRoIHRoYXQgdGhlIG5lZWQgZm9yIHRoZSBzcGluIGhlcmUg
KG9yIG9uIHRoZSBob3N0IHNpZGUpCj4gPiBpcyByZWR1Y2VkIGF0IHRoZSBjb3N0IG9mIHNvbWUg
Y29uc3RhbnQgcHJvdG9jb2wgb3ZlcmhlYWQuCj4gPiAKPiAKPiBUaGFua3MgZm9yIHRoZSBxdWlj
ayByZXZpZXdzIGFuZCBpZGVhcy4KPiBJ4oCZbGwgc2VlIGlmIEkgY2FuIGZpbmQgc29tZW9uZSBv
biB0aGUgdGVhbSB0byBoZWxwIG91dCB3aXRoIEFuZHJldyBK4oCZcwo+IHRob3VnaHRzIGFuZCBp
ZiB0aGF0IGRvZXNu4oCZdCB3b3JrLCBsb29rIGludG8gdGhlIGtlcm5lbCB0aHJlYWQgaWRlYS4K
CkkgZG9uJ3QgcmVhbGx5IHVuZGVyc3RhbmQgQW5kcmV3IEoncyBpZGVhcyB2ZXJ5IHdlbGwsIGJ1
dCBob3BlZnVsbHkgdGhleQpoZWxwLiAgVGhlIGtlcm5lbCB0aHJlYWQgaWRlYSBpcyBmYWlybHkg
Y29tcGxpY2F0ZWQgdG8gaW1wbGVtZW50LCBhbmQKdGhlcmUgaGFzIGJlZW4gYW4gaW1wZXR1cyBp
biB0aGUga2VybmVsIHRvIG5vdCBjcmVhdGUgbmV3IGtlcm5lbAp0aHJlYWRzLiAgQnV0IHRoZXJl
IGp1c3QgaGFzIHRvIGJlIGEgZ29vZCByZWFzb24sIGFuZCB0aGlzIHByb2JhYmx5IGlzCm9uZS4g
IFdlIHdvcmtlZCBvbiBpdCBhIGxvdCBpbiB0aGUgSVBNSSBob3N0IGRyaXZlciB0byB0dW5lIGl0
IGFuZCBnb3QKaXQgdG8gYSBwb2ludCB3aGVyZSBpdCBwcm92aWRlZCBkZWNlbnQgcGVyZm9ybWFu
Y2Ugd2l0aG91dCBjYXVzaW5nIHBvd2VyCm1hbmFnZW1lbnQgaXNzdWVzLiAgV2hlbiBJIGZpcnN0
IHJlYWQgdGhlIHRpdGxlIEkgd2FzIHdvcnJpZWQgaXQgd2FzCnRhbGtpbmcgYWJvdXQgdGhpcyBj
b2RlOyBJJ20gbG90aGUgdG8gdG91Y2ggaXQgZm9yIGZlYXIgb2YgYnJlYWtpbmcKdGhpbmdzLgoK
LWNvcmV5CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
T3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
