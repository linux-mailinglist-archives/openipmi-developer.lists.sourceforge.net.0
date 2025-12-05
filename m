Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BDA6CA7C65
	for <lists+openipmi-developer@lfdr.de>; Fri, 05 Dec 2025 14:35:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rKsGfDTMUSbWnaS+UVzHI50n5ssvpPmrwymsreLgICY=; b=T3+fzNKgDfN3sZSv66LxxwqXv5
	4I5d5CGDR7rgTR8iaIIl6FkQq5B+lAyk07BxWMBrGsCTdyJ23eAfNqcV9diIg7IG2os6XK+78TlyS
	uTZsGVcme32lpQJk9kIhTWdjQCWa6jOmCVkfSUkANYXbvI44sMIRyDs7rWQG+3WuKPoU=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vRVxd-0005jc-DI;
	Fri, 05 Dec 2025 13:35:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1vRVxc-0005jN-95
 for openipmi-developer@lists.sourceforge.net;
 Fri, 05 Dec 2025 13:35:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S9q1yZtwfm+ZOhcj2eq0aKq0UR8C6kAmN4VfmHVSZnQ=; b=TQ9T/0wAmF1ryPzYMB73tHrBFl
 MifZlNYt2/mtc0gY1/asaLdZQQuA0Thddx3dM2DSUbhj7CQh1OsQBPIOEkeVCthWqG4yYrsf7STKE
 P8znUExWgtHpJegbBcNcsFY1EeTuzSIVrWn1PqMVVosjcphB/jCXYxsSBVCI6IGrZAgc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=S9q1yZtwfm+ZOhcj2eq0aKq0UR8C6kAmN4VfmHVSZnQ=; b=hNT5uAAYSBNzt1d+Kmkx2WGrsV
 F1aAm437KKPbelsdk6Pis9RNpBtBOqnGwkcIH9XevcdGnb8W3Lo97bhTt9blymB3bvxUyoYu/DmK8
 Hg27tinb12H/3VYsRBiVz4q3bd3j10F2qKpzpShkyAjwGA36vtY19o1s9vkPT8ajCPZI=;
Received: from mail-qk1-f181.google.com ([209.85.222.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vRVxb-0000ok-Hv for openipmi-developer@lists.sourceforge.net;
 Fri, 05 Dec 2025 13:35:00 +0000
Received: by mail-qk1-f181.google.com with SMTP id
 af79cd13be357-8b2dcdde698so303627285a.3
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 05 Dec 2025 05:34:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1764941693; x=1765546493; darn=lists.sourceforge.net;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=S9q1yZtwfm+ZOhcj2eq0aKq0UR8C6kAmN4VfmHVSZnQ=;
 b=PJXB373l5VrW0GcVvJGaHMuX1nufTTmIErSePvsoBClyxzYub7NlPKQSkYoGxMkGXN
 1ylE0YaP1QCtmgdK1MNieqwRdXr82sTHq5RmaMAgoAhcCpzqEi/m3YOMn0kSvzuncrXh
 NLkR2QKpLqpClzHKmfM0n0scxwXnr/rHvvcXGRTOie7W8rmCET0fB5uh6XD1046kMWQZ
 XWdfvbbfgkKW6tj2e461yDxVyvqsFlQXpmu5X/VLsQFgMYYj2+voSDMOg4NecGikNCmm
 qYvGmy+kIYVFH0iBOWZ7AjxMw+2yuUQJ13Ue+LLkF024f/jEjLGasY/5lG5MAkUlr9Kl
 76fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764941693; x=1765546493;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=S9q1yZtwfm+ZOhcj2eq0aKq0UR8C6kAmN4VfmHVSZnQ=;
 b=YWyN8NGUfmaYpKr5kdZReAgUwkVQ4Ty1Dz+1QuWIiqOmB5ARM2sVwmJeFPZPdRAAyd
 eL+7gWp+CYRj6kOuG6OhsgAeVtU3wLq6bhjAzRmQ61qYzFNPMxU4xay0N1S7QBsixjxh
 K7tTcDRWEAUfpedlAJaDEqmSxnz0jsdvYLCzcyXWV7o53Ydwq/j8Bu/hFNJCRUbmYVnT
 1Q02vlyeM5nUwmBANAh4R4DEP0USD+050J3etWdbtAnZwVOKzpNrwrM+EAOcQYOiIivO
 Gec261+++IsXt2YQCf91k6JWVKa/Eixbamwrls7jsZ06QcHYJx6F+FPVlysrUHAPiY5J
 1iYQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXHYQ1RxkEn4ObA29HJ5nAi0bjJ58rODWQFYF5Jxto/QKkcAFS6VfiFVFjKkRZ8t4Mb38mq7r3QlFHVCLCCc1pQGWU=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yz1OFUces2TJZWIeDyuwJYxBwWDtJ/vAF7POB0OXPK5zwUUZkY0
 jd6Ve8fRcWRglJG3enJaSrRTkRn/G4sFZN5Bt8/Qqp4DJx194RKzg681kTzdW+8YX3cuG8T7BC+
 CXmXj
X-Gm-Gg: ASbGnctPQsbM4Y9meE0RiMdTyFS1vl18eG+pmjxBf2C8wNcmkCoZwLC5AZnjEAptnqp
 9mSEwSMpwXJQ6cPJ7wlNM623Go3ms4Z1+c7X3v1PRLueQthaj13QLt15FH3VLxOHThqGX7BIgdD
 iPVzh/D+rljcVjffQqT/atHT4/To0oR/ISzGd3+57foLvlaKL/i2/bbhavX2rVnHkiePMh8SJyl
 0jMkbN8uJymZ51zlk/w8oM5PxapJOjnO+HplG8evs7hRSkLUTUfLa4vudqO9LTVEi+AvkKf6+AK
 iCvcUL8FQU8WTo+QpPYsTV6XvJMuvwPgDXNYkjMntQ2B53UcdXaOanteK3E9z8Ew6zgGzQPaqCR
 piHN+MUw/Pcuy3dS+XRvAJjS4V8PhprkAMfaZly1OEZxDnl5q9PzTW/kGcYCG80f1Qaqy6EgsiC
 ftJYcpxjztjFEx3qqt9YTeINBm
X-Google-Smtp-Source: AGHT+IGrbICiVh6IVwh0bDlEo5fxbdCJTapkpOGEDfVvzF1xCya7uzy0YGarYIvOIhdAy6ypysSdLg==
X-Received: by 2002:a05:6830:2b0f:b0:7c7:6479:38cf with SMTP id
 46e09a7af769-7c94db5741emr5517513a34.26.1764939963135; 
 Fri, 05 Dec 2025 05:06:03 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:28e7:17ef:849f:8533])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7c95acd567dsm3807022a34.25.2025.12.05.05.06.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Dec 2025 05:06:02 -0800 (PST)
Date: Fri, 5 Dec 2025 07:05:56 -0600
From: Corey Minyard <corey@minyard.net>
To: Jinhui Guo <guojinhui.liam@bytedance.com>
Message-ID: <aTLYtDMa6BBdwxq6@mail.minyard.net>
References: <aN_vFKhMi0tDT2rK@mail.minyard.net>
 <20251205080102.1039-1-guojinhui.liam@bytedance.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251205080102.1039-1-guojinhui.liam@bytedance.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Dec 05, 2025 at 04:01:02PM +0800, Jinhui Guo wrote:
 > On Fri, Oct 3, 2025 at 10:43:16AM -0500, Corey Minyard wrote: > > On Tue,
 Sep 30, 2025 at 03:42:36PM +0800, Jinhui Guo wrote: > > > The co [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.181 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vRVxb-0000ok-Hv
Subject: Re: [Openipmi-developer] [PATCH v2 0/3] ipmi: Close the race
 between __scan_channels() and deliver_response()
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gRnJpLCBEZWMgMDUsIDIwMjUgYXQgMDQ6MDE6MDJQTSArMDgwMCwgSmluaHVpIEd1byB3cm90
ZToKPiBPbiBGcmksIE9jdCAzLCAyMDI1IGF0IDEwOjQzOjE2QU0gLTA1MDAsIENvcmV5IE1pbnlh
cmQgd3JvdGU6Cj4gPiBPbiBUdWUsIFNlcCAzMCwgMjAyNSBhdCAwMzo0MjozNlBNICswODAwLCBK
aW5odWkgR3VvIHdyb3RlOgo+ID4gPiBUaGUgY29tbWFuZCAiaXBtaSAtYiAtdCIgd291bGQgb2Nj
YXNpb25hbGx5IGZhaWw6Cj4gPiA+ICAgI2lwbWl0b29sIC1iIDYgLXQgMHgyYyByYXcgMHg2IDB4
MDEKPiA+ID4gICBVbmFibGUgdG8gc2VuZCBjb21tYW5kOiBJbnZhbGlkIGFyZ3VtZW50Cj4gPiA+
ICAgVW5hYmxlIHRvIHNlbmQgUkFXIGNvbW1hbmQgKGNoYW5uZWw9MHg2IG5ldGZuPTB4NiBsdW49
MHgwIGNtZD0weDEpCj4gPiA+IAo+ID4gPiBUaGUgcmFjZSB3aW5kb3cgYmV0d2VlbiBfX3NjYW5f
Y2hhbm5lbHMoKSBhbmQgZGVsaXZlcl9yZXNwb25zZSgpIGNhdXNlcwo+ID4gPiB0aGUgcGFyYW1l
dGVycyBvZiBzb21lIGNoYW5uZWxzIHRvIGJlIHNldCB0byAwLgo+ID4gPiAKPiA+ID4gRml4IHRo
ZSByYWNlIGJldHdlZW4gX19zY2FuX2NoYW5uZWxzKCkgYW5kIGRlbGl2ZXJfcmVzcG9uc2UoKSB3
aXRoIHRoZQo+ID4gPiBmb2xsb3dpbmcgY2hhbmdlcy4KPiA+ID4gCj4gPiA+IDEuIE9ubHkgYXNz
aWduIGludGYtPmNoYW5uZWxfbGlzdCA9IGludGYtPndjaGFubmVscyBhbmQgc2V0Cj4gPiA+ICAg
IGludGYtPmNoYW5uZWxzX3JlYWR5ID0gdHJ1ZSBpbiBjaGFubmVsX2hhbmRsZXIoKSBhZnRlciBh
bGwgY2hhbm5lbHNfcmVhZHkKPiA+ID4gICAgaGF2ZSBiZWVuIHN1Y2Nlc3NmdWxseSBzY2FubmVk
IG9yIGFmdGVyIGZhaWxpbmcgdG8gc2VuZCB0aGUgSVBNSQo+ID4gPiAgICByZXF1ZXN0Lgo+ID4g
PiAyLiBjaGFubmVsX2hhbmRsZXIoKSBzZXRzIGludGYtPmNoYW5uZWxzX3JlYWR5IHRvIHRydWUg
YnV0IG5vIG9uZSBjbGVhcnMKPiA+ID4gICAgaXQsIHByZXZlbnRpbmcgX19zY2FuX2NoYW5uZWxz
KCkgZnJvbSByZXNjYW5uaW5nIGNoYW5uZWxzLiBXaGVuIHRoZSBCTUMKPiA+ID4gICAgZmlybXdh
cmUgY2hhbmdlcyBhIHJlc2NhbiBpcyByZXF1aXJlZC4gQWxsb3cgaXQgYnkgY2xlYXJpbmcgdGhl
IGZsYWcKPiA+ID4gICAgYmVmb3JlIHN0YXJ0aW5nIGEgbmV3IHNjYW4uCj4gPiA+IDMuIENoYW5u
ZWxzIHJlbWFpbiBzdGF0aWMgdW5sZXNzIHRoZSBCTUMgZmlybXdhcmUgY2hhbmdlcy4gU2tpcCBj
aGFubmVsCj4gPiA+ICAgIHJlc2NhbiB3aGVuIG5vIEJNQyBmaXJtd2FyZSB1cGRhdGUgaGFzIG9j
Y3VycmVkLgo+ID4gPiAKPiA+ID4gCj4gPiA+IHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9h
bGwvMjAyNTA5MjkwODE2MDIuMTkwMS0xLWd1b2ppbmh1aS5saWFtQGJ5dGVkYW5jZS5jb20vCj4g
PiA+IAo+ID4gPiBDaGFuZ2Vsb2cgaW4gdjEgLT4gdjIgKHN1Z2dlc3RlZCBieSBjb3JleSk6Cj4g
PiA+ICAtIFNwbGl0IHRoZSBmaXggaW50byB0aHJlZSBpbmRlcGVuZGVudCBwYXRjaGVzLCBlYWNo
IGFkZHJlc3NpbmcgYQo+ID4gPiAgICBzZXBhcmF0ZSBpc3N1ZS4KPiA+ID4gIC0gQ2xlYXIgaW50
Zi0+Y2hhbm5lbHNfcmVhZHkgb25seSB3aGVuIHRoZSBCTUMgZmlybXdhcmUgY2hhbmdlcy4KPiA+
ID4gCj4gPiA+IEppbmh1aSBHdW8gKDMpOgo+ID4gPiAgIGlwbWk6IEZpeCB0aGUgcmFjZSBiZXR3
ZWVuIF9fc2Nhbl9jaGFubmVscygpIGFuZCBkZWxpdmVyX3Jlc3BvbnNlKCkKPiA+ID4gICBpcG1p
OiBGaXggX19zY2FuX2NoYW5uZWxzKCkgZmFpbGluZyB0byByZXNjYW4gY2hhbm5lbHMKPiA+ID4g
ICBpcG1pOiBTa2lwIGNoYW5uZWwgc2NhbiBpZiBjaGFubmVscyBhcmUgYWxyZWFkeSBtYXJrZWQg
cmVhZHkKPiAKPiA+IEkgaGF2ZSB0aGVzZSBxdWV1ZWQgZm9yIDYuMTguICBJIG5lZWQgdG8gcmUt
cmV2aWV3IHRoZW07IHRoYXQgd2lsbAo+ID4gcHJvYmFibHkgaGFwcGVuIGxhdGVyIGluIHRoZSBj
eWNsZTsgSSBjYW4ndCBwdXQgdGhlbSBpbiB1bnRpbCA2LjE3LXJjMQo+ID4gcmVsZWFzZXMuCj4g
Cj4gPiBUaGFua3MsCj4gCj4gPiAtY29yZXkKPiAKPiBIaSwgY29yZXkKPiAKPiBGcmllbmRseSBw
aW5nIOKAlCBwbGVhc2UgbGV0IG1lIGtub3cgaWYgeW91IG5lZWQgYW55dGhpbmcgZWxzZSAocmVi
YXNlLCBtb3JlIHJldmlldywKPiB0ZXN0IHJlc3VsdHMpIGFuZCBJ4oCZbGwgYmUgaGFwcHkgdG8g
dGFrZSBjYXJlIG9mIGl0Lgo+IAo+IFRoYW5rcyBmb3IgeW91ciB0aW1lLCBhbmQgc29ycnkgZm9y
IHRoZSBub2lzZS4KCk5vLCBpdCB3YXMgYSBnb29kIHJlbWluZGVyIGZvciBtZSwgSSBuZWVkZWQg
dG8gaGFuZGxlIHRoaXMuCgpJdCdzIGJlZW4gc2VudCB0byBMaW51cy4KClRoYW5rcywKCi1jb3Jl
eQoKPiAKPiBCZXN0IHJlZ2FyZHMsCj4gSmluaHVpCj4gCj4gPiA+IAo+ID4gPiAgZHJpdmVycy9j
aGFyL2lwbWkvaXBtaV9tc2doYW5kbGVyLmMgfCAyNCArKysrKysrKysrKysrKysrKy0tLS0tLS0K
PiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+
ID4gPiAKPiA+ID4gLS0gCj4gPiA+IDIuMjAuMQo+ID4gPgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxp
c3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3Rz
LnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
