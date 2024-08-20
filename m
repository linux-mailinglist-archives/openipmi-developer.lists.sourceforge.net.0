Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5156B958B5E
	for <lists+openipmi-developer@lfdr.de>; Tue, 20 Aug 2024 17:32:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sgQqF-0005go-67;
	Tue, 20 Aug 2024 15:32:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1sgQqC-0005gh-TT
 for openipmi-developer@lists.sourceforge.net;
 Tue, 20 Aug 2024 15:32:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MlyfJep8bXqi70eRVjMGb/QXN5I6JkTieSqA2LKChBk=; b=G5mUDK0bi1DIKl3J/2/T0bCUTL
 HyJeAV9dDA+y6SY6qDgiwSwKpqSo2G0O3uFlXo0xKCQvCGaDqe5wJDB/5o1C0UMYxSZOT9/thBd0f
 IlIIpTHOoKJAHOHMp9NGZ0kIaXIXdo09NPwSXGs9bDByjRSBAv95QcmsT5HMPcGrWxAQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MlyfJep8bXqi70eRVjMGb/QXN5I6JkTieSqA2LKChBk=; b=DlTxxnUr5FrGBhmOBi+8rve+Oo
 rHjoNeEWZxuOZtYr5Ygr+QID8+E/T8HVKaIgdjOobG+4KlokNSVYYtBPEi+mDWvbh2CJ9/9xV6XOf
 NyA5LPJ0JjnKnbQxZti1xj6ojgj21pJu+HfpLGUWo8M3mg/Q24Eq0P9cFhai0UPKuUwk=;
Received: from mail-lf1-f45.google.com ([209.85.167.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sgQqB-0005J2-GI for openipmi-developer@lists.sourceforge.net;
 Tue, 20 Aug 2024 15:32:12 +0000
Received: by mail-lf1-f45.google.com with SMTP id
 2adb3069b0e04-52f01afa11cso7179077e87.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 20 Aug 2024 08:32:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1724167925; x=1724772725;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=MlyfJep8bXqi70eRVjMGb/QXN5I6JkTieSqA2LKChBk=;
 b=ArxK/6Yj/y2Jg68ukAuISOi3WI2SsRhJoSI8jSRMaAp6HcfDcgi7UrMmpSwHNe6aHI
 yu4pr7486c8yZapBQJgb4+ZnuuBjAXpuD+i4JpJwMOF0uYJUCIgCDyeICAXrjyltEyOM
 FvazHvT7B0bbTg97jQtPn3UxOCGMHyknJT1WPQeZAlGdOoBXIkZlwzo+J44KeWKsO7Tx
 u3mVn5WdRDiY1fXoNalT8XxrRBbgghfbqryZ8lDP/qMvBdQ37QyuH9WksGd9l1ld/tXb
 cPT3BkEGoApflXRxDUCgUPTSJG8rMghs/TPql5KOtMjGredPG2w0QsB8D41ePGmiFI1C
 TKCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724167925; x=1724772725;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=MlyfJep8bXqi70eRVjMGb/QXN5I6JkTieSqA2LKChBk=;
 b=mqfyPUhAQM6WaKz78L8g11nRiG26fLJWuQ2jP9qhBEJWjCOn0AHcW+Qr1YLeUl8dtH
 R2kh7wvE9mFFxuU28vsDGyBWqUO5vkYfT9ZXXywLjCvc/4yI0uxxozIpYiBASOUtV6SJ
 hb0TfPthzgveFsx6LWpEHz+A14x3/U/O+0Rp/fYkN5t5zAU2xtBirOSIZA4qsts90KoI
 FLQVFqZYNggj9ZnZVNJKF9X/jPa5rVf1u/vBnL0p6Dk5x2ECqH3sIut9ghA0Y5JuC17Y
 j4qDb/rkBVnN8Kxhhn0vM46BGlTJnAxqxdQMHuVfBs8C71cea/eN4BbidwGFUVS9zjhn
 R8tA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVKbffI4gB9nMBbcnottpcKsonGStpXaTk1VNxxgvE3AU34yijNmM4fdHi+9iulbK91HwCUw9zJCOCxnp/RMLVfhiDZbi+jkqk2as0HT6yFUe5rZQEPgA6a
X-Gm-Message-State: AOJu0YyjBQZZyL/JK/lhVdDmfjrhXwqLExeNuCSyCBnP4XRgmVRhGVFr
 5aa0YmB/hFx8b7be8btZs3kuJQ2ZrzRceGuHD5phNxIh1lTnqCm6gWhU7s8tubf3/YKl3x8zmiF
 0Z0SHk4a4aeoyQoWZ2+zzrZbwIQUIr2Ml4NUw3Lh/0Rl2C9cU1Zg=
X-Google-Smtp-Source: AGHT+IF/cRUYBlGy/+csRyVZc1LkNT2K43ekUV0jTVvwQYEMgOK0RYgE5xpnKqeJiERELBJeMoQ6otcKFqAWQXMqc+8=
X-Received: by 2002:a05:6512:2243:b0:52e:7656:a0f4 with SMTP id
 2adb3069b0e04-5331c6dc3b3mr9669498e87.41.1724167924215; Tue, 20 Aug 2024
 08:32:04 -0700 (PDT)
MIME-Version: 1.0
References: <20240816065458.117986-1-iivanov@suse.de>
 <Zr+Up+94gmPEHwcJ@mail.minyard.net>
 <84eb700ee647cc40e9e99b086a8648e3@suse.de>
 <20240820102005.4l2j73jpt7lmwloh@localhost.localdomain>
In-Reply-To: <20240820102005.4l2j73jpt7lmwloh@localhost.localdomain>
From: Corey Minyard <corey@minyard.net>
Date: Tue, 20 Aug 2024 10:31:53 -0500
Message-ID: <CAB9gMfqj2KJ8=dxhKvJewYB8cE04F2y6pqCtHbXnKVJCjTBygQ@mail.gmail.com>
To: "Ivan T. Ivanov" <iivanov@suse.de>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Aug 20, 2024 at 5:15 AM Ivan T. Ivanov <iivanov@suse.de>
    wrote: > > On 08-18 12:27, Ivan T. Ivanov wrote: > > > > > > > > 3) It appears
    the response to the GET_DEVICE_ID command, though a > [...] 
 
 Content analysis details:   (-0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                          [209.85.167.45 listed in sa-trusted.bondedsender.org]
  0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
                             DNSWL was blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [209.85.167.45 listed in list.dnswl.org]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.167.45 listed in bl.score.senderscore.com]
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.167.45 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sgQqB-0005J2-GI
Subject: Re: [Openipmi-developer] [PATCH] ipmi:ssif: Exit early when there
 is a SMBus error
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 minyard@acm.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVHVlLCBBdWcgMjAsIDIwMjQgYXQgNToxNeKAr0FNIEl2YW4gVC4gSXZhbm92IDxpaXZhbm92
QHN1c2UuZGU+IHdyb3RlOgo+Cj4gT24gMDgtMTggMTI6MjcsIEl2YW4gVC4gSXZhbm92IHdyb3Rl
Ogo+ID4KPiA+ID4KPiA+ID4gMykgSXQgYXBwZWFycyB0aGUgcmVzcG9uc2UgdG8gdGhlIEdFVF9E
RVZJQ0VfSUQgY29tbWFuZCwgdGhvdWdoIGEKPiA+ID4gcmVzcG9uc2UgaXMgcmV0dXJuZWQsIGlz
IG5vdCB2YWxpZC4gIFRoZSByaWdodCB3YXkgdG8gaGFuZGxlIHRoaXMgd291bGQKPiA+ID4gYmUg
dG8gZG8gbW9yZSB2YWxpZGF0aW9uIGluIHRoZSBzc2lmX2RldGVjdCgpIGZ1bmN0aW9uLiAgSXQg
ZG9lc24ndCBkbwo+ID4gPiBhbnkgdmFsaWRhdGlvbiBvZiB0aGUgcmVzcG9uc2UgZGF0YSwgYW5k
IHRoYXQncyByZWFsbHkgd2hhdCBuZWVkcyB0byBiZQo+ID4gPiBkb25lLgo+ID4gPgo+ID4KPiA+
IGRvX2NtZCgpIGluIHNzaWZfZGV0ZWN0KCkgYWxyZWFkeSBkbyB2YWxpZGF0aW9uLiBQZXJoYXBz
LAo+ID4gc3NpZl9wcm9iZSgpIHNob3VsZCBqdXN0IG5vdCByZXR1cm4gRU5PREVWIGluIGNhc2Ug
b2YgZXJyb3IuCj4gPgo+Cj4gT2gsIEkgd2FudGVkIHRvIHNheSBzc2lmX2RldGVjdCwgbm90IHNz
aWZfcHJvYmUuCgpZZWFoLCB0aGF0J3MgcHJvYmFibHkgdGhlIHJpZ2h0IHNvbHV0aW9uLiAgSSds
bCBsb29rIGF0IHRoaXMgYSBiaXQuCkJ1dCBJIHNlZSB0aGUgcHJvYmxlbS4gIERvIHlvdSB3YW50
IHRvIGRvIGEgcGF0Y2gsIG9yIGRvIHlvdSB3YW50IG1lCnRvPwoKLWNvcmV5CgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVy
IG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0
dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVs
b3Blcgo=
