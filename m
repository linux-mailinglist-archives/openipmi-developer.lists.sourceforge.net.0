Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7516C7B4A8C
	for <lists+openipmi-developer@lfdr.de>; Mon,  2 Oct 2023 03:31:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qn7mY-0005VT-18;
	Mon, 02 Oct 2023 01:31:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1qn7mO-0005Uw-Ht
 for openipmi-developer@lists.sourceforge.net;
 Mon, 02 Oct 2023 01:31:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Cc:To:From:In-Reply-To:Message-ID:Subject:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2ra7bkCox/ihsnqIoBYbzg6FPAuZSaA/8jxth63/imo=; b=mTe0IdQ7oIJ3m4lMgggF59/Ptg
 Zu6r7zoHqYMg5DRX4Y8ghRUA8WSHMu1kl3jj7w+VO4uPWpeJNhQ126P/4Nsn8T/PWgFXNnp159Eez
 AED/wDKBXvXL0rHN+4xM2po5maIDLOp3gQVJj/AUxgpdoibZIXcBizmW7uGdAbTlBbvk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:To:From:
 In-Reply-To:Message-ID:Subject:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2ra7bkCox/ihsnqIoBYbzg6FPAuZSaA/8jxth63/imo=; b=gEoLrUCqWs7acB1Y5aN4d8SQo2
 bsiY3YVWlrKVarg/vivEH33Z+88sa1QHiaK59BY20g27fxEkuQTGJ8lAYn/g/hLGMQpNlNzM91L/s
 xvgkLcqUerabhxCkvIYbZGyiJTwNlWUH/0fEQCjmgRR3yW8/Oww69yJbkjOfQj//Y2Gs=;
Received: from mail-qv1-f50.google.com ([209.85.219.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qn7mM-0001Ft-Hx for openipmi-developer@lists.sourceforge.net;
 Mon, 02 Oct 2023 01:31:24 +0000
Received: by mail-qv1-f50.google.com with SMTP id
 6a1803df08f44-65b02e42399so75174886d6.3
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 01 Oct 2023 18:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696210277; x=1696815077; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:importance:cc:to:from
 :in-reply-to:message-id:subject:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2ra7bkCox/ihsnqIoBYbzg6FPAuZSaA/8jxth63/imo=;
 b=g6FcLUTK53Zx66TIJc7b9RIHzzvp8GPefl3/JKiV0OBHkiYU0dO7ym2Rsb/sxaL2TD
 oLUUBSBEajSpNZL32fCG3co+MPZE5pzY6IghRcAEAywDiI2tnbndXPcoxP0u0gPpA0lZ
 1pm3ppB5OiaSrDZJKAHsHqqdXPtF7DOWzWqE31AlrDkOUO7n50AI5YCuKBL0fdyfjniJ
 XtZ/hmLhsacxHQx+7RrfoY8SApVq3bPMW8pFHlCr53glxSxdX6FTLJIdEsLG5w5kXPuz
 osqA9vlQcIhPflVf4W8daK4aStEBNOjx+TqGwUKbuD4qEOLKXz3D2YXzjyOSKF2OTrs6
 aCPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696210277; x=1696815077;
 h=content-transfer-encoding:mime-version:importance:cc:to:from
 :in-reply-to:message-id:subject:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=2ra7bkCox/ihsnqIoBYbzg6FPAuZSaA/8jxth63/imo=;
 b=lZks7SO310ARYDNuNOwEa2TXJRtOwe2BDC1lfGX0iMR4idBTK2hGgiz5x+q8Bv1zYi
 HlUC+TXuV5fE8Ss2wJsD1vuaWeGiZcM0Fspyok/Wv+ls23BBnEA8DPYwif5UQ2fyo8/s
 120h882O/8ec9zvSGreeZtpUA4juyHzj+mPCvauzW1weS+eM8ICtObuyjjY8HX3YHmN+
 d6N53hHPy8aGTUkkFbgMnQTk96/lvSomVMLwadOR0Z492UkhCBRDSkoav1xyTvgMzNh3
 Y407XnnIYGs61YJMh7aATMwjMpDhKe5TAfZtfoUTRILrLN0Qh3gOvnNsjt/uJ/Q63zZh
 WXwg==
X-Gm-Message-State: AOJu0YwUrFeMoQgfP/5WPu32r42ewMHZtRtcQARy5gMvMkTwM7kDIYdT
 5YVVEYbUVNfxX7xHOJ1wg+8nbxIq0A==
X-Google-Smtp-Source: AGHT+IFSFcHtwiRt7lgTfGUG7+ooAxzRMcuHamTvdTOPimL1vVCTXYSEOc0E0FHw2mu2awfDLNJzfw==
X-Received: by 2002:a0c:8c44:0:b0:65a:fa53:ed07 with SMTP id
 o4-20020a0c8c44000000b0065afa53ed07mr9141825qvb.59.1696210276715; 
 Sun, 01 Oct 2023 18:31:16 -0700 (PDT)
Received: from serve.minyard.net ([47.189.89.62])
 by smtp.gmail.com with ESMTPSA id
 z20-20020ae9c114000000b0077589913a8bsm2423588qki.132.2023.10.01.18.31.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Oct 2023 18:31:15 -0700 (PDT)
Received: from [100.115.92.2] (unknown [192.168.29.50])
 by serve.minyard.net (Postfix) with ESMTPSA id 8AFAA180109;
 Mon,  2 Oct 2023 01:31:14 +0000 (UTC)
Date: Sun, 01 Oct 2023 13:59:16 -0700
Message-ID: <67d8a49d-6c6e-4543-b76e-bdf977e2f357@email.android.com>
X-Android-Message-ID: <67d8a49d-6c6e-4543-b76e-bdf977e2f357@email.android.com>
In-Reply-To: <4EC9716D-6120-4675-949F-BFFEFAE63DDA@flyingcircus.io>
From: Corey Minyard <minyard@acm.org>
To: Christian Theune <ct@flyingcircus.io>
Importance: Normal
X-Priority: 3
X-MSMail-Priority: Normal
MIME-Version: 1.0
X-Spam-Score: 1.7 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Oct 1, 2023 11:14 AM, Christian Theune via Openipmi-developer
    <openipmi-developer@lists.sourceforge.net> wrote: Hi, > On 1. Oct 2023, at
    03:49, Corey Minyard <minyard@acm.org> wrote: > > On Sat, Sep 30, 2023 at
    11:14:01PM +0200, Christian Theune via Openipmi-developer wrote: >> Hi, >>
    >> sorry if this isn’t direc [...] 
 
 Content analysis details:   (1.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.219.50 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [tcminyard[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.219.50 listed in list.dnswl.org]
  0.1 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.6 HTML_MIME_NO_HTML_TAG  HTML-only message, but there is no HTML
                             tag
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different
X-Headers-End: 1qn7mM-0001Ft-Hx
Subject: Re: [Openipmi-developer] SOL via syslog?
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
Content-Type: multipart/mixed; boundary="===============3655620390170775582=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

--===============3655620390170775582==
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9J2F1dG8nPjxkaXY+PGRpdiBjbGFzcz0iZ21haWxfZXh0cmEiPjxkaXYgY2xhc3M9
ImdtYWlsX3F1b3RlIj5PbiBPY3QgMSwgMjAyMyAxMToxNCBBTSwgQ2hyaXN0aWFuIFRoZXVuZSB2
aWEgT3BlbmlwbWktZGV2ZWxvcGVyICZsdDtvcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNl
Zm9yZ2UubmV0Jmd0OyB3cm90ZTo8YnIgdHlwZT0iYXR0cmlidXRpb24iPjxibG9ja3F1b3RlIGNs
YXNzPSJxdW90ZSIgc3R5bGU9Im1hcmdpbjowIDAgMCAuOGV4O2JvcmRlci1sZWZ0OjFweCAjY2Nj
IHNvbGlkO3BhZGRpbmctbGVmdDoxZXgiPjxwIGRpcj0ibHRyIj5IaSw8L3A+CjxwIGRpcj0ibHRy
Ij4mZ3Q7IE9uIDEuIE9jdCAyMDIzLCBhdCAwMzo0OSwgQ29yZXkgTWlueWFyZCAmbHQ7bWlueWFy
ZEBhY20ub3JnJmd0OyB3cm90ZTo8YnI+CiZndDsgPGJyPgomZ3Q7IE9uIFNhdCwgU2VwIDMwLCAy
MDIzIGF0IDExOjE0OjAxUE0gKzAyMDAsIENocmlzdGlhbiBUaGV1bmUgdmlhIE9wZW5pcG1pLWRl
dmVsb3BlciB3cm90ZTo8YnI+CiZndDsmZ3Q7IEhpLDxicj4KJmd0OyZndDsgPGJyPgomZ3Q7Jmd0
OyBzb3JyeSBpZiB0aGlzIGlzbuKAmXQgZGlyZWN0bHkgYSBkZXZlbG9wZXJzIHF1ZXN0aW9uLCBi
dXQgSeKAmXZlIHJ1biBvdXQgb2YgYXZlbnVlcyBhZnRlciBnb29nbGluZyBhbmQgbG9va2luZyBh
cm91bmTigKYgPGJyPgomZ3Q7Jmd0OyA8YnI+CiZndDsmZ3Q7IFdl4oCZcmUgZXhwZXJpZW5jaW5n
IHdlaXJkIHN5c3RlbSBzdGFiaWxpdHkgaXNzdWUgd2hlcmUgdGhlIOKAnGxvZyB0byBTRUzigJ0g
ZG9lc27igJl0IGN1dCBpdDogd2Ugc2VlIHdhdGNoZG9nIHJlYm9vdHMgYnV0IG5vIGtlcm5lbCBv
dXRwdXQgd2hhdHNvZXZlciBlbmRpbmcgdXAgaW4gdGhlIFNFTC4gKEnigJl2ZSBkZWJ1Z2dlZCB0
aGlzIHdpdGggQ29yZXkgYmVmb3JlIGFuZCB3ZSBmb3VuZCBzb21ldGhpbmcgdG8gZml4IGJ1dCB0
aGUgd2F0Y2hkb2cgZXZlbnRzIHdl4oCZcmUgZXhwZXJpZW5jaW5nIHN0aWxsIGRvbuKAmXQgZ2V0
IGxvZ2dlZCBpbiBtb3JlIGRldGFpbC4pPGJyPgomZ3Q7IDxicj4KJmd0OyBDYW4geW91IG5vdCBn
ZXQga2VybmVsIGNvcmVkdW1wcz88L3A+CjxwIGRpcj0ibHRyIj5VbmZvcnR1bmF0ZWx5IG5vIGFu
ZCBJIHN0aWxsIGhhdmUgYWJzb2x1dGVseSBub3cgaWRlYSB3aHkgdGhlIHdhdGNoZG9nIHRyaWdn
ZXJz4oCmIDwvcD4KPHAgZGlyPSJsdHIiPkkgaGF2ZSBjdXJyZW50bHkgYXR0YWNoZWQgZG96ZW5z
IG9mIHNlcnZlcnMgdGhhdCBhcmUgcGFydCBvZiBhIG15c3RlcmlvdXMgc2VyaWVzIG9mIGNyYXNo
ZXMgYnV0IHRoZXkgZGlkbuKAmXQgY3Jhc2ggYWZ0ZXIgSSBhdHRhY2hlZCB0aGUgU09MIGNvbnRp
bnVvdXNseS4gSnVzdCBteSBraW5kIG9mIGx1Y2sgSSBndWVzcyDigKYgOyk8L3A+PC9ibG9ja3F1
b3RlPjwvZGl2PjwvZGl2PjwvZGl2PjxkaXYgZGlyPSJhdXRvIj48YnI+PC9kaXY+PGRpdiBkaXI9
ImF1dG8iPkl0IG1pZ2h0IGJlIGEgY2x1ZS4mbmJzcDsgQ2FuIHlvdSBtYWtlIHN1cmUgZmxvdy1j
b250cm9sIGlzIHR1cm5lZCBvZmYgb24gdGhlIFNPTCBjb25uZWN0aW9uIGFuZCBjb25zb2xlPyZu
YnNwOyBJZiB5b3UgaGF2ZSAiciIgb24gdGhlIGNvbnNvbGU9IGNvbW1hbmQgKGxpa2UgY29uc29s
ZT0xMTUyMDBuODFyKSAsIGlmIHRoZSBCTUMgc3RvcHMgdGFraW5nIGNoYXJhY3RlcnMgeW91IGNh
biBoYW5nIHRoZSBrZXJuZWwuPC9kaXY+PGRpdiBkaXI9ImF1dG8iPjxicj48L2Rpdj48ZGl2IGRp
cj0iYXV0byI+WW91IG1pZ2h0IHdhbnQgdG8gbWFrZSBzdXJlIGdldHR5IGhhcyBSVFMgdHVybmVk
IG9mZiwgdG9vLjwvZGl2PjxkaXYgZGlyPSJhdXRvIj48YnI+PC9kaXY+PGRpdiBkaXI9ImF1dG8i
PlRoZSB0cm91YmxlIGlzLCBvZiBjb3Vyc2UsIHRoYXQgeW91IGNhbiBsb3NlIGNoYXJhY3RlcnMg
YmVjYXVzZSBvZiBhIHNsb3cgQk1DLiZuYnNwOyBCdXQgaXQncyBnZW5lcmFsbHkgYSBiYWQgaWRl
YSB0byBydW4gYSBjb25zb2xlIHdpdGggZmxvdyBjb250cm9sIGVuYWJsZWQuPC9kaXY+PGRpdiBk
aXI9ImF1dG8iPjxicj48L2Rpdj48ZGl2IGRpcj0iYXV0byI+PGRpdiBjbGFzcz0iZ21haWxfZXh0
cmEiPjxkaXYgY2xhc3M9ImdtYWlsX3F1b3RlIj48YmxvY2txdW90ZSBjbGFzcz0icXVvdGUiIHN0
eWxlPSJtYXJnaW46MCAwIDAgLjhleDtib3JkZXItbGVmdDoxcHggI2NjYyBzb2xpZDtwYWRkaW5n
LWxlZnQ6MWV4Ij4KPHAgZGlyPSJsdHIiPkFzIHdl4oCZcmUgY29udGludW91c2x5IHVwZGF0aW5n
IG91ciBlbnZpcm9ubWVudCBpdCBtaWdodCBhbHNvIGJlIHRoYXQgd2XigJl2ZSBzdWNjZXNzZnVs
bHkgZXZhZGVkIGEga2VybmVsIGJ1ZyB0aGF0IHdhcyBoYXVudGluZyB1cyDigKYgbWF5YmUg4oCm
IDspPC9wPgo8cCBkaXI9Imx0ciI+Jmd0OyZndDsgPGJyPgomZ3Q7Jmd0OyBJ4oCZbSB3b25kZXJp
bmc6IGRvZXMgYW55b25lIGtub3cgb2YgYSDigJxwdXNo4oCdIHNvbHV0aW9uIHRvIGluc3RydWN0
IHRoZSBCTUMgKG1vc3RseSBTdXBlcm1pY3JvIGluIG91ciBjYXNlKSB0byBwdXNoIFNPTCBvdXRw
dXQgcHJvYWN0aXZlbHkgdGhyb3VnaCBzb21lIHByb3RvY29sIGxpa2Ugc3lzbG9nPyA8YnI+CiZn
dDsgPGJyPgomZ3Q7IFRoZSBTRUwgcHJvYmFibHkgaXNuJ3QgYmlnIG9yIGZhc3QgZW5vdWdoIHRv
IHRha2Ugc3lzdGVtIGxvZ3MuJm5ic3A7IFlvdTxicj4KJmd0OyBjb3VsZCBjcmVhdGUgc29tZXRo
aW5nIGxpa2UgdGhpcyBhcyBwYXJ0IG9mIHByaW50aywgYnV0IEkgc3VzcGVjdCB0aGF0PGJyPgom
Z3Q7IGl0IHdvdWxkIHF1aWNrbHkgb3ZlcmZsb3cgdGhlIFNFTC48L3A+CjxwIGRpcj0ibHRyIj5Z
ZWFoLCBJIHdhc27igJl0IHRoaW5raW5nIGFib3V0IHRoZSBTRUwgYnV0IHdvbmRlcmluZyB3aGV0
aGVyIHNlcmlhbCBvdXRwdXQgY291bGQgYmUgc2hpcHBlZCBpbiBhIHB1c2gtbWFubmVyIGZyb20g
dGhlIEJNQyB3aXRob3V0IGhhdmluZyB0byBhdHRhY2ggYW5kIGF1dGhlbnRpY2F0ZS48L3A+PC9i
bG9ja3F1b3RlPjwvZGl2PjwvZGl2PjwvZGl2PjxkaXYgZGlyPSJhdXRvIj48YnI+PC9kaXY+PGRp
diBkaXI9ImF1dG8iPlRoYXQgd291bGQgdGFrZSBzb21lIHdvcmsgaW4gdGhlIEJNQy48L2Rpdj48
ZGl2IGRpcj0iYXV0byI+PGJyPjwvZGl2PjxkaXYgZGlyPSJhdXRvIj48ZGl2IGNsYXNzPSJnbWFp
bF9leHRyYSI+PGRpdiBjbGFzcz0iZ21haWxfcXVvdGUiPjxibG9ja3F1b3RlIGNsYXNzPSJxdW90
ZSIgc3R5bGU9Im1hcmdpbjowIDAgMCAuOGV4O2JvcmRlci1sZWZ0OjFweCAjY2NjIHNvbGlkO3Bh
ZGRpbmctbGVmdDoxZXgiPgo8cCBkaXI9Imx0ciI+Jmd0OyZndDsgT3RoZXJ3aXNlIHdl4oCZZCBu
ZWVkIHRvIHNldCB1cCBhIGNlbnRyYWwgaG9zdCB3aXRoIHBhc3N3b3JkcyBmb3IgZG96ZW5zIG9m
IGhvc3RzIHRvIHB1bGwgdGhlIFNPTCBmb3IgbG9nZ2luZyBhbmQgdGhhdCBkb2VzbuKAmXQgZmVl
bCByaWdodCBlaXRoZXIg4oCmIC1fXzxicj4KJmd0OyA8YnI+CiZndDsgSSBrbm93IHBlb3BsZSB0
aGF0IGRvIHRoaXM7IGl0J3Mgbm90IHRlcnJpYmxlLiZuYnNwOyBZb3UgZG8gaGF2ZSBhbGwgb2Yg
eW91cjxicj4KJmd0OyBJUE1JIHBhc3N3b3JkcyBpbiBvbmUgcGxhY2UsIHRoYXQncyB0aGUgYmln
Z2VzdCBpc3N1ZSwgYnV0IElNSE8geW91PGJyPgomZ3Q7IHNob3VsZCBiZSBtb25pdG9yaW5nIHRo
ZSBvdXRwdXQgb2YgeW91ciBjb25zb2xlcywgYW55d2F5LjwvcD4KPHAgZGlyPSJsdHIiPlllYWgs
IHRoYXTigJlzIHdoYXQgSeKAmW0gcG9uZGVyaW5nLCB0b28uIElNSE8gaXTigJlzIHF1aXRlIGEg
Yml0IHRlcnJpYmxlIGFuZCB0aHVzIEkgd2FzIHdvbmRlcmluZyB3aGV0aGVyIHRoZSBCTUMgbWln
aHQgaGF2ZSBhIGJ1aWx0LWluIHNvbHV0aW9uIHRoYXQgd291bGQgdHVybiB0aGlzIHVwc2lkZSBk
b3duIOKApiBidXQgSSBnZXNzIG5vdDwvcD4KPHAgZGlyPSJsdHIiPiZndDsgSSBzdXBwb3J0IGEg
cHJvZ3JhbSBjYWxsZWQgc2VyMm5ldCB0aGF0IGlzIGNhcGFibGUgb2YgbWFraW5nIFNPTDxicj4K
Jmd0OyBjb25uZWN0aW9ucywgbG9nZ2luZyB0aGUgb3V0cHV0LCBhbmQgYWxsb3dpbmcgY29ubmVj
dGlvbnMgdG8gdGhlPGJyPgomZ3Q7IGNvbnNvbGUuJm5ic3A7IFRoYXQgd291bGQgYmUgYSBwcmV0
dHkgY29tcGxpY2F0ZWQgc2V0dXAsIGJ1dCBJIGNhbiBoZWxwIHlvdTxicj4KJmd0OyB3aXRoIGl0
LCBpZiB5b3UgbGlrZS48L3A+CjxwIGRpcj0ibHRyIj5UaGUgbXVsdGlwbGV4aW5nIHNvdW5kcyBn
cmVhdC4gSeKAmXZlIGJ1aWx0IGEgc21hbGwgc2hlbGwgd3JhcHBlciB0byBtYW5hZ2UgU09MIGNv
bm5lY3Rpb25zIGFuZCB0aGVpciBsb2dnaW5nIChhbmQgcmVjb25uZWN0aW5nIGlmIHRoZSBCTUMg
YWN0cyB1cCkgd2hpY2ggd29ya3MgZm9yIG5vdy48L3A+CjxwIGRpcj0ibHRyIj5Gcm9tIGEgZGVz
aWduIHBlcnNwZWN0aXZlIEnigJlkIHJlYWxseSBsb3ZlIHRoaXMgdG8gYmUgcHVzaC1iYXNlZC4g
SSByZXNlYXJjaGVkIHRoZSBkbXRmIHNpdGUsIGJ1dCBkaWRu4oCZdCBmaW5kIGFueXRoaW5nIHRo
ZXJlIGVpdGhlciDigKYgSSBndWVzcyBJ4oCZbSB0aGUgb2RkLW9uZSBvdXQgdGhlbiDigKY8L3A+
PC9ibG9ja3F1b3RlPjwvZGl2PjwvZGl2PjwvZGl2PjxkaXYgZGlyPSJhdXRvIj5ObyBpZGVhLiZu
YnNwOyBTbyB3aXRoIHlvdXIgbGl0dGxlIHdyYXBwZXIgY29ubmVjdGVkIGV2ZXJ5dGhpbmcgc2Vl
bXMgdG8gd29yayBvay48L2Rpdj48ZGl2IGRpcj0iYXV0byI+PGJyPjwvZGl2PjxkaXYgZGlyPSJh
dXRvIj5PdXRzaWRlIG9mIHRoZSBmbG93IGNvbnRyb2wgdGhpbmcsIEkgaGF2ZSBubyBpZGVhLjwv
ZGl2PjxkaXYgZGlyPSJhdXRvIj48YnI+PC9kaXY+PGRpdiBkaXI9ImF1dG8iPi1jb3JleTwvZGl2
PjxkaXYgZGlyPSJhdXRvIj48YnI+PC9kaXY+PGRpdiBkaXI9ImF1dG8iPjxkaXYgY2xhc3M9Imdt
YWlsX2V4dHJhIj48ZGl2IGNsYXNzPSJnbWFpbF9xdW90ZSI+PGJsb2NrcXVvdGUgY2xhc3M9InF1
b3RlIiBzdHlsZT0ibWFyZ2luOjAgMCAwIC44ZXg7Ym9yZGVyLWxlZnQ6MXB4ICNjY2Mgc29saWQ7
cGFkZGluZy1sZWZ0OjFleCI+PHAgZGlyPSJsdHIiPiA8L3A+CjxwIGRpcj0ibHRyIj5DaHJpc3Rp
YW48L3A+CjxwIGRpcj0ibHRyIj4tLSA8YnI+CkNocmlzdGlhbiBUaGV1bmUgwrcgY3RAZmx5aW5n
Y2lyY3VzLmlvIMK3ICs0OSAzNDUgMjE5NDAxIDA8YnI+CkZseWluZyBDaXJjdXMgSW50ZXJuZXQg
T3BlcmF0aW9ucyBHbWJIIMK3IGh0dHBzOi8vZmx5aW5nY2lyY3VzLmlvPGJyPgpMZWlwemlnZXIg
U3RyLiA3MC83MSDCtyAwNjEwOCBIYWxsZSAoU2FhbGUpIMK3IERldXRzY2hsYW5kPGJyPgpIUiBT
dGVuZGFsIEhSQiAyMTE2OSDCtyBHZXNjaMOkZnRzZsO8aHJlcjogQ2hyaXN0aWFuIFRoZXVuZSwg
Q2hyaXN0aWFuIFphZ3JvZG5pY2s8YnI+PGJyPjwvcD4KPHAgZGlyPSJsdHIiPl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fPGJyPgpPcGVuaXBtaS1kZXZlbG9w
ZXIgbWFpbGluZyBsaXN0PGJyPgpPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2Uu
bmV0PGJyPgpodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVu
aXBtaS1kZXZlbG9wZXI8YnI+CjwvcD4KPC9ibG9ja3F1b3RlPjwvZGl2Pjxicj48L2Rpdj48L2Rp
dj48L2Rpdj4=



--===============3655620390170775582==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3655620390170775582==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============3655620390170775582==--
