Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9588685E3D8
	for <lists+openipmi-developer@lfdr.de>; Wed, 21 Feb 2024 17:58:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rcpuv-00066W-U0;
	Wed, 21 Feb 2024 16:57:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <geissonator@gmail.com>) id 1rcpuu-00066N-Jv
 for openipmi-developer@lists.sourceforge.net;
 Wed, 21 Feb 2024 16:57:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:
 Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AJWYEU/M/WsHNzSMkh9EKav36BnK47emNVVN/Db4odE=; b=mpcT135K+FcO+om6LEBeTc6klN
 0N7o02KuxTR26sxG4+Nl/WDkEBAoNytVdc4SMb1ejqmfESvYN4Z7IV1O8FWljv/KM8ubMAUgX/Psb
 0wPI96qVAZL6SZi25yPYhMOG07oGEq4eQD8n4thlD9SCJL5GC6XBMc3Rddp3eFXuv3cM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:
 From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AJWYEU/M/WsHNzSMkh9EKav36BnK47emNVVN/Db4odE=; b=UcZKmEJYIoiimqkCsek5PtwPoF
 sOcrTZYZ2pO4hQELCMR168JYZdFPlmoWjUgTIb9OroLqnYh9e/UJ/Dm8YmJbUSKlu9g29wK6516KB
 yYSArktKKXx0ZU50GF20kUEGhxD/4/JRmYn5J9Sq3Ehkv7UUWBu90f67fsMP4QeBcqg4=;
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rcpus-0001Gj-JC for openipmi-developer@lists.sourceforge.net;
 Wed, 21 Feb 2024 16:57:56 +0000
Received: by mail-ot1-f48.google.com with SMTP id
 46e09a7af769-6e28bd74883so3782509a34.1
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 21 Feb 2024 08:57:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1708534670; x=1709139470; darn=lists.sourceforge.net;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=AJWYEU/M/WsHNzSMkh9EKav36BnK47emNVVN/Db4odE=;
 b=Uq8Yb/tYBgBcMs/NX2RzT0Lg3DgX42mqCO8aoplIT4IDirilnuP4K0kVnAWVX8AmIT
 Gm1oczpLCH/ogmzGc3ppxCvX+6jLZl+s/0oolBu6aUh1T9oJsGW/YU0CkLE5zrJc4rkZ
 gUaYtAtdH30kSlCDMM9bBaiumSh6xMAHsEwyy9xxuOA1CRj+xdl7RJy9FCCRHun84+6k
 8JQDaXgwi+zoi5X3kQ7B5nSbiTAJdrrf9Ocq1dSM1SLzJV+eWWaoPADjFociIv22cCua
 neE9rh14w/VpgIgF7iNW/HyCsDN22NR7gFCYFFG00eGj4o2dqbDojSSbJ9gPZ2YGGPrM
 A4NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708534670; x=1709139470;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=AJWYEU/M/WsHNzSMkh9EKav36BnK47emNVVN/Db4odE=;
 b=jibGw9P++Q1HSu2/P40Qbpi0LMourcUWiwxzBKyopJcdswitCL/aAfeYV/6/OGbI9X
 hmsVRbd+8aVkfEfoeUnUDett9e2stRkb3fG3xUUGzvffj0twhIU65/UhUv0Qzr9eyCpQ
 /RKbGk25qsDTcZsxJKfnzKG8t+7HfD8M8dVmDcRa0cM1qZAMEYUaswAj0vCeVf0//vi6
 gQSMKYTrt2Sx4moQ/N8H0K5RU4dxQpBUOzgrSQ8J+VvXzQBh7pQI7ZrJe8hFDunrHQSj
 1LrVasqgA4ya9hnfmYkg8Pk7p4DDyk9YzdL2qxtkD8dAYZ/cVkiq2rgKlIZHaywjXnEG
 qAVw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXHOUUVG9TJLt8qba7U51Z2p/Ujhg+VUHvbATCJ/ox2nLTmta5/f1PRPKeZfowiqzGR8RPo+PmCP7GKim2AdmsQL8Bun+/tx2uqPttt4cZ5OBfxGQwKqu6S
X-Gm-Message-State: AOJu0Yx03vxOj7UdZBtVPqDL8e8DHTCWO5zY3coJ22ERR5Oib0bUwRtK
 Tk5aCBmsXjTAxV9QDCYXxHGhx/nKpBz5pjW6JKeEHgjlTQ//YXzc
X-Google-Smtp-Source: AGHT+IHUcyjcP2AuJIMMMPPLJA0QZmjqHygE1wZIcVBYLdz8J3dluza4MbNXQvR57Vui1zS7cOCffQ==
X-Received: by 2002:a05:6808:189a:b0:3c1:6caa:1131 with SMTP id
 bi26-20020a056808189a00b003c16caa1131mr22813oib.18.1708534670133; 
 Wed, 21 Feb 2024 08:57:50 -0800 (PST)
Received: from smtpclient.apple ([2605:a601:aa0a:4200:30a5:ebd1:48db:41c6])
 by smtp.gmail.com with ESMTPSA id
 nz6-20020a056871758600b0021ed5ee3c77sm1551790oac.16.2024.02.21.08.57.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 21 Feb 2024 08:57:49 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.300.61.1.2\))
From: Andrew Geissler <geissonator@gmail.com>
In-Reply-To: <9680ad7d7a48fc36a0572dc2286a1229a29341fe.camel@codeconstruct.com.au>
Date: Wed, 21 Feb 2024 10:57:38 -0600
Message-Id: <527F52AB-0070-43EA-BE82-945280CA2AEE@gmail.com>
References: <20240220123615.963916-1-geissonator@gmail.com>
 <a9169894-6972-49c0-a1d4-d80863f5b511@molgen.mpg.de>
 <ZdT+eThnYqb3iawF@mail.minyard.net>
 <9680ad7d7a48fc36a0572dc2286a1229a29341fe.camel@codeconstruct.com.au>
To: Andrew Jeffery <andrew@codeconstruct.com.au>
X-Mailer: Apple Mail (2.3774.300.61.1.2)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  > On Feb 20, 2024, at 4:36 PM, Andrew Jeffery wrote: > >
    On Tue, 2024-02-20 at 13:33 -0600, Corey Minyard wrote: >> On Tue, Feb 20,
    2024 at 04:51:21PM +0100, Paul Menzel wrote: >>> Dear Andrew, >> [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.210.48 listed in list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [geissonator[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.210.48 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rcpus-0001Gj-JC
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, minyard@acm.org,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, openbmc@lists.ozlabs.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 openipmi-developer@lists.sourceforge.net,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Cgo+IE9uIEZlYiAyMCwgMjAyNCwgYXQgNDozNuKAr1BNLCBBbmRyZXcgSmVmZmVyeSA8YW5kcmV3
QGNvZGVjb25zdHJ1Y3QuY29tLmF1PiB3cm90ZToKPiAKPiBPbiBUdWUsIDIwMjQtMDItMjAgYXQg
MTM6MzMgLTA2MDAsIENvcmV5IE1pbnlhcmQgd3JvdGU6Cj4+IE9uIFR1ZSwgRmViIDIwLCAyMDI0
IGF0IDA0OjUxOjIxUE0gKzAxMDAsIFBhdWwgTWVuemVsIHdyb3RlOgo+Pj4gRGVhciBBbmRyZXcs
Cj4+IAo+PiBJdCdzIGJlY2F1c2UgaW5jcmVhc2luZyB0aGF0IG51bWJlciBjYXVzZXMgaXQgdG8g
cG9sbCBsb25nZXIgZm9yIHRoZQo+PiBldmVudCwgdGhlIGhvc3QgdGFrZXMgbG9uZ2VyIHRoYW4g
MTAwdXMgdG8gZ2VuZXJhdGUgdGhlIGV2ZW50LCBhbmQgaWYKPj4gdGhlIGV2ZW50IGlzIG1pc3Nl
ZCB0aGUgdGltZSB3aGVuIGl0IGlzIGNoZWNrZWQgYWdhaW4gaXMgdmVyeSBsb25nLgo+PiAKPj4g
UG9sbGluZyBmb3IgMTAwdXMgaXMgYWxyZWFkeSBwcmV0dHkgZXh0cmVtZS4gMjAwdXMgaXMgcmVh
bGx5IHRvbyBsb25nLgo+PiAKPj4gVGhlIHJlYWwgcHJvYmxlbSBpcyB0aGF0IHRoZXJlIGlzIG5v
IGludGVycnVwdCBmb3IgdGhpcy4gIEknZCBhbHNvIGd1ZXNzCj4+IHRoZXJlIGlzIG5vIGludGVy
cnVwdCBvbiB0aGUgaG9zdCBzaWRlLCBiZWNhdXNlIHRoYXQgd291bGQgc29sdmUgdGhpcwo+PiBw
cm9ibGVtLCB0b28sIGFzIGl0IHdvdWxkIGNlcnRhaW5seSBnZXQgYXJvdW5kIHRvIGhhbmRsaW5n
IHRoZSBpbnRlcnVwdAo+PiBpbiAxMDB1cy4gIEknbSBhc3N1bWluZyB0aGUgaG9zdCBkcml2ZXIg
aXMgbm90IHRoZSBMaW51eCBkcml2ZXIsIGFzIGl0Cj4+IHNob3VsZCBhbHNvIGhhbmRsZSB0aGlz
IGluIGEgdGltZWx5IG1hbm5lciwgZXZlbiB3aGVuIHBvbGxpbmcuCj4gCj4gSSBleHBlY3QgdGhl
IGlzc3VlcyBBbmRyZXcgRyBpcyBvYnNlcnZpbmcgYXJlIHdpdGggdGhlIFBvd2VyMTAgYm9vdAo+
IGZpcm13YXJlLiBUaGUgYm9vdCBmaXJtd2FyZSBvbmx5IHBvbGxzLiBUaGUgcnVudGltZSBmaXJt
d2FyZSBlbmFibGVzCj4gaW50ZXJydXB0cy4KClllcCwgdGhpcyBpcyB3aXRoIHRoZSBsb3cgbGV2
ZWwgaG9zdCBib290IGZpcm13YXJlLgpBbHNvLCBmdXJ0aGVyIHRlc3Rpbmcgb3ZlciBuaWdodCBz
aG93ZWQgdGhhdCAyMDB1cyB3YXNu4oCZdCBlbm91Z2ggZm9yCm91ciBsYXJnZXIgRXZlcmVzdCBQ
MTAgbWFjaGluZXMsIEkgbmVlZGVkIHRvIGdvIHRvIDMwMHVzLiBBcyB3ZQp3ZXJlIHN0cnVnZ2xp
bmcgdG8gYWxsb3cgMjAwdXMsIEkgYXNzdW1lIDMwMHVzIGlzIGdvaW5nIHRvIGJlIGEgbm8tZ28u
Cgo+PiAKPiAKPj4gCj4+IFRoZSByaWdodCB3YXkgdG8gZml4IHRoaXMgaXMgcHJvYmFibHkgdG8g
ZG8gdGhlIHNhbWUgdGhpbmcgdGhlIGhvc3Qgc2lkZQo+PiBMaW51eCBkcml2ZXIgZG9lcy4gIEl0
IGhhcyBhIGtlcm5lbCB0aHJlYWQgdGhhdCBpcyBraWNrZWQgb2ZmIHRvIGRvCj4+IHRoaXMuICBV
bmZvcnR1bmF0ZWx5LCB0aGF0J3MgbW9yZSBjb21wbGljYXRlZCB0byBpbXBsZW1lbnQsIGJ1dCBp
dAo+PiBhdm9pZHMgcG9sbGluZyBpbiB0aGlzIGxvY2F0aW9uICh3aGljaCBjYXVzZXMgbGF0ZW5j
eSBpc3N1ZXMgb24gdGhlIEJNQwo+PiBzaWRlKSBhbmQgbGV0cyB5b3UgcG9sbCBsb25nZXIgd2l0
aG91dCBjYXVzaW5nIGlzc3Vlcy4KPiAKPiBJbiBBbmRyZXcgRydzIGNhc2UgaGUncyB0YWxraW5n
IE1DVFAgb3ZlciBLQ1MgdXNpbmcgYSB2ZW5kb3ItZGVmaW5lZAo+IHRyYW5zcG9ydCBiaW5kaW5n
ICh0aGF0IGFsc28gbGV2ZXJhZ2VzIExQQyBGV0ggY3ljbGVzIGZvciBidWxrIGRhdGEKPiB0cmFu
c2ZlcnMpWzFdLiBJIHRoaW5rIGl0IGNvdWxkIGhhdmUgdGFrZW4gbW9yZSBpbnNwaXJhdGlvbiBm
cm9tIHRoZQo+IElQTUkgS0NTIHByb3RvY29sOiBJdCBtaWdodCBiZSB3b3J0aCBhbiBleHBlcmlt
ZW50IHRvIHdyaXRlIHRoZSBkdW1teQo+IGNvbW1hbmQgdmFsdWUgdG8gSURSIGZyb20gdGhlIGhv
c3Qgc2lkZSBhZnRlciBlYWNoIE9EUiByZWFkIHRvIHNpZ25hbAo+IHRoZSBob3N0J3MgY2xlYXJp
bmcgb2YgT0JGIChubyBpbnRlcnJ1cHQgZm9yIHRoZSBCTUMpIHdpdGggYW4gSUJGCj4gKHdoaWNo
IGRvZXMgaW50ZXJydXB0IHRoZSBCTUMpLiBBbmQgZG9pbmcgdGhlIG9idmVyc2UgZm9yIHRoZSBC
TUMuIFNvbWUKPiBicmllZiB0aG91Z2h0IHN1Z2dlc3RzIHRoYXQgaWYgdGhlIGR1bW15IHZhbHVl
IGlzIHJlYWQgdGhlcmUncyBubyBuZWVkCj4gdG8gc2VuZCBhIGR1bW15IHZhbHVlIGluIHJlcGx5
IChhcyBpdCdzIGFuIGluZGljYXRvciB0byByZWFkIHRoZSBzdGF0dXMKPiByZWdpc3RlcikuIFdp
dGggdGhhdCB0aGUgbmVlZCBmb3IgdGhlIHNwaW4gaGVyZSAob3Igb24gdGhlIGhvc3Qgc2lkZSkK
PiBpcyByZWR1Y2VkIGF0IHRoZSBjb3N0IG9mIHNvbWUgY29uc3RhbnQgcHJvdG9jb2wgb3Zlcmhl
YWQuCj4gCgpUaGFua3MgZm9yIHRoZSBxdWljayByZXZpZXdzIGFuZCBpZGVhcy4KSeKAmWxsIHNl
ZSBpZiBJIGNhbiBmaW5kIHNvbWVvbmUgb24gdGhlIHRlYW0gdG8gaGVscCBvdXQgd2l0aCBBbmRy
ZXcgSuKAmXMKdGhvdWdodHMgYW5kIGlmIHRoYXQgZG9lc27igJl0IHdvcmssIGxvb2sgaW50byB0
aGUga2VybmVsIHRocmVhZCBpZGVhLgoKPiAKPiAKPiBBbmRyZXcgSgoKCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1h
aWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBz
Oi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Bl
cgo=
