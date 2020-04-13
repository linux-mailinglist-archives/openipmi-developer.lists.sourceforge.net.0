Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A835B1A6ECE
	for <lists+openipmi-developer@lfdr.de>; Mon, 13 Apr 2020 23:59:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jO77V-00030x-Ex; Mon, 13 Apr 2020 21:59:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jO77U-00030f-EW
 for openipmi-developer@lists.sourceforge.net; Mon, 13 Apr 2020 21:59:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W1jvaZsL9ZNbOXIeEh7lh6mCadCp7P3SgOJXcY82jUs=; b=ULVrpC/ttPK1n99IF5ZoR5Gf1V
 fOYBU8ANkpfnfJikdrOtQLSvLykyZ2K2WTzEoYurJLEeN1VLxfAWEpV7CoUYUhNJ3juvvqiqVzvBR
 qI5CAFgUVyVkgSQWmE6ReNubW/Sy+t0/Ol/GyrMLHnPXb1QBb5RhTD1cUMoatcyZ00SY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W1jvaZsL9ZNbOXIeEh7lh6mCadCp7P3SgOJXcY82jUs=; b=Dk07bkOtYWU21SVfl8ry9W96ck
 a+WXNfHgg653z2+eZXz14Zg5NUzAIijZ67kHtFyeRFZ+To38M3syLRkj6Q+Ae0VUjPiMv35SKFwGc
 C7LpOoM3QauCoLtAsaGfaMJTjj2jSL9k1/lQxqii6TN29ishLIcusFuql4fu18av3G4U=;
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jO77P-0005fo-E1
 for openipmi-developer@lists.sourceforge.net; Mon, 13 Apr 2020 21:59:56 +0000
Received: by mail-oi1-f196.google.com with SMTP id d63so8753435oig.6
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 13 Apr 2020 14:59:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=W1jvaZsL9ZNbOXIeEh7lh6mCadCp7P3SgOJXcY82jUs=;
 b=fR6+SAhVIiQCOMsGgNSxsf0AzuYSlO1eFDjPc36hkq9egFeXVkSC+Y5Uvev6njDR/Z
 Ccn1Qk4b/bVSW3N54wHlDfwO5stF2Z+ZoeeqFaM3B9RzwhxxrX0lkdNFXJeM8RmKRB7f
 KcPBwp5rtzO3z26M0wP/bhXLfO6nD5heoI2PcpTC8ZEFJkV8XB+F/h+zJpLL/z/pXSJl
 Fv/7/GqzAND4oNa+GL4wyFXfETrKBiMqSwgu1Y95NU/oTGsrkAzYDfFtRvbplAL0brYq
 j2YfRlWISTyyZ55FjD58H33cMih8KQ1GvAYGZjUxnTh+y+lGxcTVbrXFZnSehM3gFtsA
 lyyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=W1jvaZsL9ZNbOXIeEh7lh6mCadCp7P3SgOJXcY82jUs=;
 b=QhBNahpn1qkQUbe/J4hB1D1L8SRewi23Z9D/1C4wm62VVi332GNbhTombT4nTLwKi0
 oyEqrYqmdpxPLEkUwUkkHlOQ4KgKj5vxgMgzQa/TnaxEktO5RQ+//VHpyeLv0Txrh7ew
 vctZkgZfSCyYbz9TOty7+ehHlcNN1H6ZdfQY392WtKu9aAb/qBAKkRD3a+2O3VtIBVl8
 yHm49nkOQeR+siejHwXpYb+NWMNYzP4Osq8/7u8PiGFzjcW7R8Hn4jaldXDdh4stj0d8
 BeyPhyc7fQI/uNkGdSArXVopeOdQUGIObevRXk5KxckjpU+plpfChlrbsCenDbtRZTHm
 42VA==
X-Gm-Message-State: AGi0PuYSsSRqujrZb5J1/y+7y+UcAKe6HhA4BjjVKptxYiPQKiNRT6V8
 SdGGQqXlcdQTMMV13UaC4HrR49nyVA==
X-Google-Smtp-Source: APiQypJJP7mXCuB0qdrq9bZfxsXY+fRU5oTstHBquZb+OTyQGMHDxMDi/vWRtblvSWINL21tfwv6sA==
X-Received: by 2002:aca:fd12:: with SMTP id b18mr13548979oii.158.1586815185429; 
 Mon, 13 Apr 2020 14:59:45 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id n2sm2869446oom.18.2020.04.13.14.59.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 14:59:44 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPSA id F0A4918016D;
 Mon, 13 Apr 2020 21:59:42 +0000 (UTC)
Date: Mon, 13 Apr 2020 16:59:41 -0500
From: Corey Minyard <minyard@acm.org>
To: Tang Bin <tangbin@cmss.chinamobile.com>
Message-ID: <20200413215941.GF3587@minyard.net>
References: <20200408115958.2848-1-tangbin@cmss.chinamobile.com>
 <20200413113225.GB3587@minyard.net>
 <47c06465-9ae5-42c2-ca00-5c666521bbde@cmss.chinamobile.com>
 <20200413142348.GD3587@minyard.net>
 <3894dab2-0660-999c-6f4c-4b5b9ff57773@cmss.chinamobile.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3894dab2-0660-999c-6f4c-4b5b9ff57773@cmss.chinamobile.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1jO77P-0005fo-E1
Subject: Re: [Openipmi-developer] [PATCH v3]ipmi:bt-bmc:Avoid unnecessary
 judgement
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
Cc: gregkh@linuxfoundation.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, arnd@arndb.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gTW9uLCBBcHIgMTMsIDIwMjAgYXQgMTE6NDQ6NDlQTSArMDgwMCwgVGFuZyBCaW4gd3JvdGU6
Cj4gSGkgQ29yZXk6Cj4gCj4gT24gMjAyMC80LzEzIDIyOjIzLCBDb3JleSBNaW55YXJkIHdyb3Rl
Ogo+ID4gPiBDYW4gSSBjb25zaWRlciB0aGF0IHRoZSBwYXRjaCB3aWxsIGJlIGFwcGxpZWQgaW4g
NS4477yfCj4gPiBJdCdzIGluIG15IHF1ZXVlLCBzbyB0aGF0J3MgdGhlIHBsYW4uCj4gPiAKPiA+
ID4gPiAgICBJCj4gPiA+ID4gY2hhbmdlZCB0aGUgdGl0bGUgdG8gYmUgIkF2b2lkIHVubmVjZXNz
YXJ5IGNoZWNrIi4KPiA+ID4gWW91IGhhdmUgbW9kaWZpZWQgaXQsIHdoaWNoIG1lYW5zIEkgZG9u
J3QgbmVlZCB0byBzdWJtaXQgYSBuZXcgcGF0Y2jvvJ8KPiA+IENvcnJlY3QuCj4gCj4gVGhhbmsg
eW91IHZlcnkgbXVjaCwgSSBhbSB3YWl0aW5nIGZvciB0aGUgYXBwbGllZC4KPiAKPiAKPiBUaGVu
LCBJIGhhdmUgc29tZSBxdWVzdGlvbnMgdG8gYXNrIHlvdToKPiAKPiDCoMKgwqAgSSBoYXZlIGNo
ZWNrZWQgdGhlIGZpbGUgYnQtYm1jLmMgY2FyZWZ1bGx5LCBhbmQgZm91bmQgdGhhdCB0aGVyZSBh
cmUKPiBhbm90aGVyIHR3byBwcm9ibGVtcy5QbGVhc2UgaGVscCBtZSBhbmFseXplIHRoZW0sIGlm
IHlvdSB0aGluayBpdCBpcwo+IGZlYXNpYmxlLCB0aGVuIEkgd2lsbCBzdWJtaXQgdGhlIHBhdGNo
Lgo+IAo+IMKgwqDCoCBRMTogQWJvdXQgRm9ybWF0IFByb2JsZW0KPiAKPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBJbiB0aGUgNDY5fjQ3MSBsaW5lLCB0aGUgZmlyc3QgbGV0dGVyIHNob3VsZCBiZSBp
bmRlbnRlZCwgcGxlYXNlCj4gY2hlY2sgaWYgdGhlIHdyaXRpbmcgaGVyZSBpcyByZWFzb25hYmxl
Pwo+IAoKSSdtIG5vdCBzdXJlIGhvdyB0aGF0IGhhcHBlbmVkLiAgSXQgd2FzIHRoYXQgd2F5IGZy
b20gdGhlIG9yaWdpbmFsCnN1Ym1pdHRlciBhbmQgbm9ib2R5IG5vdGljZWQgaW4gcmV2aWV3LiAg
SXQncyBvYnZpb3VzbHkgd3JvbmcuCgo+IAo+IMKgwqDCoCBRMjogQWJvdXQgdGhlIGZ1bmN0aW9u
IGJ0X2JtY19jb25maWdfaXJxKCkKPiAKPiDCoMKgwqDCoMKgwqDCoMKgwqAgMe+8iUluIHRoZSBm
dW5jdGlvbiBidF9ibWNfcHJvYmUoKSwgdGhlIHJldHVybiB2YWx1ZSBvZgo+IGJ0X2JtY19jb25m
aWdfaXJxKCkgbWFkZSBubyBqdWRnZW1lbnQsIHdoZXRoZXIgaXQgaXMgc3VpdGFibGU/IO+8iElm
IHlvdXIKPiB2aWV3IGlzIGRvbid0IG5lZWQgdG8ganVkZ2UsIHRoZSBmb2xsb3dpbmcgd2lsbCBj
aGFuZ2Uu77yJCj4gCgpIbW0sIHRoYXQncyBwcm9iYWJseSBub3QgYSBiaWcgZGVhbC4gIElmIGl0
IGZhaWxzIGlycXMgYXJlIGp1c3Qgbm90CnVzZWQuICBJdCBwcm9iYWJseSBzaG91bGRuJ3QgcmV0
dXJuIGEgdmFsdWUsIHRob3VnaC4KCj4gCj4gwqDCoMKgwqDCoMKgwqDCoMKgIDLvvIlBY2NvcmRp
bmcgdG8gdGhlIGtlcm5lbCBpbnRlcmZhY2Ugb2YgcGxhdGZvcm1fZ2V0X2lycSgpLHRoZQo+IHJl
dHVybiB2YWx1ZSBpcyBuZWdhdGl2ZSwKPiAKPiDCoMKgwqAgwqDCoCDCoCDCoCDCoCDCoCDCoCDC
oCBpZiAoIWJ0X2JtYy0+aXJxKQo+IMKgwqDCoCDCoMKgwqAgwqDCoCDCoCDCoCDCoCDCoCDCoCDC
oMKgIHJldHVybiAtRU5PREVWOwo+IAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc28g
dGhlIGNoZWNrIGhlcmUgaXMgaW52YWxpZC5UaGUgc3RhbmRhcmQgd2F5IHRvIHdyaXRlIGlzOgo+
IAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKGJ0X2JtYy0+
aXJxIDwgMCkKPiDCoMKgwqAgwqDCoMKgIMKgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqDCoCByZXR1
cm4gYnRfYm1jLT5pcnE7Cj4gCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBCdXQgY29u
c2lkZXIgaWYgZmFpbGVkLCAiYnRfYm1jLT5pcnEiIG11c3QgYmUgYXNzaWduZWQgdG8KPiAiMCLv
vIx0aGUgZWFzaWVzdCB3YXkgaXMgdG8gZGVsZXRlIHRoZcKgwqDCoMKgwqDCoMKgIDQwM340MDQg
bGluZSwgaGFuZGxlZCBkaXJlY3RseQo+IGJ5IHRoZSBmdW5jdGlvbiBkZXZtX3JlcXVlc3RfaXJx
KCkuCgpUaGUgcHJvYmxlbSB5b3UgcG9pbnQgb3V0IGlzIHJlYWwsIHRoZSBjaGVjayBzaG91bGQg
YmUgPCAwLgoKWW91IGRvbid0IHdhbnQgaXQgaGFuZGxlZCBieSBkZXZtX3JlcXVlc3RfaXJxLCB0
aGF0IGNvdWxkIHJlc3VsdCBpbiBsb2dzCnRoYXQgYXJlIGludmFsaWQuCgpBbHNvLCBpdCBzaG91
bGQgdXNlIHBsYXRmb3JtX2dldF9pcnFfb3B0aW9uYWwoKSB0byBhdm9pZCBhIHNwdXJyaW91cyBs
b2cKd2hlbiB0aGVyZSBpcyBubyBpcnEuCgo+IAo+IAo+IMKgwqDCoMKgwqDCoMKgIFEz77yaQWJv
dXQgZGV2X3dhcm0oKQo+IAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBLRVJOX1dB
Uk5JTkcgaXMgaGlnaGVyIHRoYW4gS0VSTl9JTkZPLCB0aGUgc2FtZSB0bwo+IGRldl93YXJuKCkg
YW5kIGRldl9pbmZvKCkuIFdoZW4gdGhlIGZ1bmN0aW9uIGJ0X2JtY19wcm9iZSgpIHVzZXMgZGV2
X2luZm8oKQo+IHRvIHByaW50IGVycm9yIG1lc3NhZ2UsIHRoZSBkZXZfd2FybSgpIGluIHRoZSBs
aW5lIG9mIDQwOSBzaG91bGQgYmUKPiByZWR1bmRhbnQuCgpUaGF0IGlzIGFsbCBjb3JyZWN0IGFz
IGl0IGlzLiAgSWYgdGhlcmUgaXMgYW4gaXJxIHNwZWNpZmllZCBhbmQgaXQgY2FuJ3QKYmUgcmVx
dWVzdGVkLCB0aGF0IGlzIGEgcHJvYmxlbS4gIElmIHRoZXJlIGlzIG5vIGlycSBzcGVjaWZpZWQs
IHRoYXQgaXMKZmluZSwganVzdCBpbmZvIGlzIGdvb2QuCgpUaGFua3MsCgotY29yZXkKCj4gCj4g
Cj4gSSBhbSB3YWl0aW5nIGZvciB5b3VyIHJlcGxheSwgYW5kIHRoYW5rIHlvdSBmb3IgeW91ciBn
dWlkYW5jZS4KPiAKPiBUYW5nIEJpbgo+IAo+IAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QK
T3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
