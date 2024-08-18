Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E4770955C0F
	for <lists+openipmi-developer@lfdr.de>; Sun, 18 Aug 2024 11:27:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sfcCM-0000uQ-RT;
	Sun, 18 Aug 2024 09:27:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <iivanov@suse.de>) id 1sfcCK-0000uK-Va
 for openipmi-developer@lists.sourceforge.net;
 Sun, 18 Aug 2024 09:27:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Message-ID:
 References:In-Reply-To:Subject:Cc:To:From:Date:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GZlmuodUzsffUpLSPtOBsk5LrJHVlHkQjDRo5YV6zYo=; b=dhnjvnxa//aRJEB0BTg1HoRrSx
 BnE4AZHPMzJBraUHu0YuRXSDFRzP7OqhaNN+As6nDfJHGX6VmkhiftXhNp9cgURQEjBhMFNk+/8zf
 4LaAZ80123mI65EdVrevAzgC19VMJqBtTRQj4/MapyiWH+HrbK/w0uNhmmTIUxOSLN3k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Message-ID:References:In-Reply-To:
 Subject:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GZlmuodUzsffUpLSPtOBsk5LrJHVlHkQjDRo5YV6zYo=; b=O096xcximzZ/wALM1R7ddR/Nra
 nZlXkgGiyseQZYqpTrmntiL/8ILUoh38v0NuFLfgmLbdpdFT+Eneerhq81xsWLkw8uYxS5/IZEtxf
 c5W8xhYAoUlwTyIC7T/5mzVh+rdktmwkPEH1v1zhGtkgOKZosTAEJOpYoY+sEahLOwk8=;
Received: from smtp-out2.suse.de ([195.135.223.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sfcCJ-0000VF-B8 for openipmi-developer@lists.sourceforge.net;
 Sun, 18 Aug 2024 09:27:40 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id C50C620307;
 Sun, 18 Aug 2024 09:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1723973247; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GZlmuodUzsffUpLSPtOBsk5LrJHVlHkQjDRo5YV6zYo=;
 b=EDLgLuHsdWLDblYrb0ZTK3vFVjfPgI1UKzOnYg0Mtcg6h7MAMldJDIMH44iYJV5cjjAz0b
 c3thFWvM6QG1E1OlqEUlBq+OG/OzTrVnu4mmKM9nbS6mHG0v+blD/xXNRRFLZI2keUTD1Y
 KZb1siTe+wNEFHIYbimPyB7mBWZZUnc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1723973247;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GZlmuodUzsffUpLSPtOBsk5LrJHVlHkQjDRo5YV6zYo=;
 b=1JNCmfcKSHsaXAUochvRqw54C3WljfKFNiYwm5SC54HLl84jLnnrklQyX50VzryO05CF43
 gktNjQxfYf4XEeCA==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1723973247; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GZlmuodUzsffUpLSPtOBsk5LrJHVlHkQjDRo5YV6zYo=;
 b=EDLgLuHsdWLDblYrb0ZTK3vFVjfPgI1UKzOnYg0Mtcg6h7MAMldJDIMH44iYJV5cjjAz0b
 c3thFWvM6QG1E1OlqEUlBq+OG/OzTrVnu4mmKM9nbS6mHG0v+blD/xXNRRFLZI2keUTD1Y
 KZb1siTe+wNEFHIYbimPyB7mBWZZUnc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1723973247;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GZlmuodUzsffUpLSPtOBsk5LrJHVlHkQjDRo5YV6zYo=;
 b=1JNCmfcKSHsaXAUochvRqw54C3WljfKFNiYwm5SC54HLl84jLnnrklQyX50VzryO05CF43
 gktNjQxfYf4XEeCA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id B9B86136ED;
 Sun, 18 Aug 2024 09:27:27 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id WaLXLH++wWZTWQAAD6G6ig
 (envelope-from <iivanov@suse.de>); Sun, 18 Aug 2024 09:27:27 +0000
MIME-Version: 1.0
Date: Sun, 18 Aug 2024 12:27:27 +0300
From: "Ivan T. Ivanov" <iivanov@suse.de>
To: corey@minyard.net
In-Reply-To: <Zr+Up+94gmPEHwcJ@mail.minyard.net>
References: <20240816065458.117986-1-iivanov@suse.de>
 <Zr+Up+94gmPEHwcJ@mail.minyard.net>
User-Agent: Roundcube Webmail
Message-ID: <84eb700ee647cc40e9e99b086a8648e3@suse.de>
X-Sender: iivanov@suse.de
X-Spam-Flag: NO
X-Spamd-Result: default: False [-4.29 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 NEURAL_HAM_LONG(-1.00)[-1.000];
 NEURAL_HAM_SHORT(-0.20)[-0.997]; MIME_GOOD(-0.10)[text/plain];
 XM_UA_NO_VERSION(0.01)[]; RCVD_TLS_ALL(0.00)[];
 MID_RHS_MATCH_FROM(0.00)[]; RCVD_VIA_SMTP_AUTH(0.00)[];
 MIME_TRACE(0.00)[0:+]; ARC_NA(0.00)[];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 FUZZY_BLOCKED(0.00)[rspamd.com]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 FROM_HAS_DN(0.00)[]; RCPT_COUNT_THREE(0.00)[4];
 FROM_EQ_ENVFROM(0.00)[]; TO_DN_NONE(0.00)[];
 RCVD_COUNT_TWO(0.00)[2];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:mid]
X-Spam-Level: 
X-Spam-Score: -4.29
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 2024-08-16 21:04, Corey Minyard wrote: > On Fri, Aug
 16, 2024 at 09:54:58AM +0300, Ivan T. Ivanov wrote: >> It is pointless to
 continue module probing when communication >> with device is failing. [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [195.135.223.131 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.de]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [195.135.223.131 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [195.135.223.131 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sfcCJ-0000VF-B8
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGksCgpPbiAyMDI0LTA4LTE2IDIxOjA0LCBDb3JleSBNaW55YXJkIHdyb3RlOgo+IE9uIEZyaSwg
QXVnIDE2LCAyMDI0IGF0IDA5OjU0OjU4QU0gKzAzMDAsIEl2YW4gVC4gSXZhbm92IHdyb3RlOgo+
PiBJdCBpcyBwb2ludGxlc3MgdG8gY29udGludWUgbW9kdWxlIHByb2Jpbmcgd2hlbiBjb21tdW5p
Y2F0aW9uCj4+IHdpdGggZGV2aWNlIGlzIGZhaWxpbmcuIFRoaXMganVzdCBmaWxsIGxvZ3Mgd2l0
aCBtaXNsZWFkaW5nCj4+IG1lc3NhZ2VzIGxpa2UgdGhpczoKPiAKPiBTbyB0aGUgQk1DIChvciB3
aGF0ZXZlciBpcyB0aGVyZSkgcmVzcG9uZHMgdG8gYSBHRVRfREVWSUNFX0lEIGNvbW1hbmQsCgpX
ZWxsLCBub3QgcmVhbGx5LiBJbiBjYXNlcyB3aGVyZSBzc2lmX2RldGVjdCgpIHJldHVybnMgLUVO
T0RFViwgaTJjIGNvcmUKaTJjX2RldGVjdF9hZGRyZXNzKCkgdGhyZWF0IGl0IGFzICJXZSBjYXRj
aCBpdCBoZXJlIGFzIHRoaXMgaXNuJ3QgYW4gCmVycm9y4oCdLgpTZWUgaTJjX2RldGVjdF9hZGRy
ZXNzKCkuCgo+IGJ1dCB0aGVuIGRvZXNuJ3QgcHJvcGVybHkgaGFuZGxlIGFueSBvdGhlciB2YWxp
ZCBhbmQgbWFuZGF0b3J5IAo+IGNvbW1hbmRzPwo+IEFuZCB0aGlzIGRldmljZSB3YXMgYWRkZWQg
dmlhIEFDUEkgb3IgU01CSU9TIG9yIGRldmljZSB0cmVlLCBhbG1vc3QKPiBjZXJ0YWlubHkuCj4g
Cj4gTXkgY29tbWVudHMgYXJlOgo+IAo+IDEpIFRoaXMgZml4IGlzIHdyb25nLCBiZWNhdXNlIGl0
IG1heSBtYXNrIGltcG9ydGFudCB0aGluZ3MgdGhhdCBuZWVkIHRvCj4gYmUgcmVwb3J0ZWQuCj4g
Cj4gMikgRml4IHRoZSBzb3VyY2Ugb2YgdGhlIHByb2JsZW0uICBZb3UgY2FuJ3QgZXhwZWN0IHNv
ZnR3YXJlIHRvCj4gY29tcGVuc2F0ZSBmb3IgYWxsIGJhZCBoYXJkd2FyZSBhbmQgZmlybXdhcmUu
ICBJJ2QgZ3Vlc3MgdGhlIGZpcm13YXJlCj4gdGFibGVzIGFyZSBwb2ludGluZyB0byBzb21ldGhp
bmcgdGhhdCdzIG5vdCBhIEJNQy4KCkkgYW0gbm90IHNheWluZyB0aGF0IGhhcmR3YXJlIG9yIGZp
cm13YXJlIGRvIG5vdCBoYXZlIGl0cyBpc3N1ZXMgaW4gdGhpcwpjYXNlLiBCdXQganVzdCBhcyBp
dCBpcyB3cml0dGVuIG5vdyBzc2lmX3Byb2JlKCkgaXMgZnJhZ2lsZS4gSXQgY29udGludWUKYXNr
aW5nIGRldmljZSBmb3IgZmVhdHVyZXMgaWdub3JpbmcgdGhhdCB0aGVyZSBpcyBubyB2YWxpZCBT
TUJ1cyAKY29tbXVuaWNhdGlvbi4KCj4gCj4gMykgSXQgYXBwZWFycyB0aGUgcmVzcG9uc2UgdG8g
dGhlIEdFVF9ERVZJQ0VfSUQgY29tbWFuZCwgdGhvdWdoIGEKPiByZXNwb25zZSBpcyByZXR1cm5l
ZCwgaXMgbm90IHZhbGlkLiAgVGhlIHJpZ2h0IHdheSB0byBoYW5kbGUgdGhpcyB3b3VsZAo+IGJl
IHRvIGRvIG1vcmUgdmFsaWRhdGlvbiBpbiB0aGUgc3NpZl9kZXRlY3QoKSBmdW5jdGlvbi4gIEl0
IGRvZXNuJ3QgZG8KPiBhbnkgdmFsaWRhdGlvbiBvZiB0aGUgcmVzcG9uc2UgZGF0YSwgYW5kIHRo
YXQncyByZWFsbHkgd2hhdCBuZWVkcyB0byBiZQo+IGRvbmUuCj4gCgpkb19jbWQoKSBpbiBzc2lm
X2RldGVjdCgpIGFscmVhZHkgZG8gdmFsaWRhdGlvbi4gUGVyaGFwcywKc3NpZl9wcm9iZSgpIHNo
b3VsZCBqdXN0IG5vdCByZXR1cm4gRU5PREVWIGluIGNhc2Ugb2YgZXJyb3IuCgpUaGFuayB5b3Ug
Zm9yIHlvdXIgY29tbWVudHMhCgpSZWdhcmRzLApJdmFuCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlz
dApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
