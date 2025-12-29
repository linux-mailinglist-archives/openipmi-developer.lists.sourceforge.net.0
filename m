Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD99CE6FFD
	for <lists+openipmi-developer@lfdr.de>; Mon, 29 Dec 2025 15:22:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TIvbXrU0v5SGfJtBhOfDFGDYNhGHdufwFyYTo//Ay5A=; b=dvW2kMBPH/l4Ltzs4UT/LTcftZ
	8NIHP8riWb/F5t64pzpaNaes8Vt0NPAbtoPBuOl9CTqSalADEdesaA6SgjdvME1nCBt5Jr4TIxWvB
	w4G3YPsJ3urkokwAAMhFFZSFRqIOPOCBZuvaTuUHzZbrbrYxlb6OndkZBYe7rTpDam9A=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vaE8T-0007RO-Ta;
	Mon, 29 Dec 2025 14:22:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1vaE7u-0007QV-FM
 for openipmi-developer@lists.sourceforge.net;
 Mon, 29 Dec 2025 14:21:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IahdbE037M2ZHTN0zVp6Tc3EHhWoU+H3jyB3UauI8Cg=; b=ZQPEjdYO2d/Z37yXHLWHt91bY+
 pO9EFzVZRlZimHCUfJ1mPx0xBTL6gKllBJK2AHxdD6qASSEiUzW7S3DfZQUkz0ahV7r0CAKT0rvq5
 iyt1MoPY/DekHIhC+BrIwnq7Ye3u99mspPvQd2wrxObl1NYpltdvUjLIVzltQyU1L6J8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IahdbE037M2ZHTN0zVp6Tc3EHhWoU+H3jyB3UauI8Cg=; b=diE4OxGTDKvO6jC8uXAraZSFKl
 akoAslYpn818VmgjgnWOVU48RYnIv7r2SP/5GydEm6cV1C/jYYrPjHUuWmYGwkaUGBT3GMYTmQLRc
 UDqOGzFJTJzujFOZ4mkuFkfNEiHImf8gKPpODHXnDzczYxer4TDQhiA1X4T/05GMafJw=;
Received: from mail-ed1-f46.google.com ([209.85.208.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vaE7s-0006Vh-Ul for openipmi-developer@lists.sourceforge.net;
 Mon, 29 Dec 2025 14:21:38 +0000
Received: by mail-ed1-f46.google.com with SMTP id
 4fb4d7f45d1cf-64e48264e56so3254799a12.1
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 29 Dec 2025 06:21:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1767018085; x=1767622885; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=IahdbE037M2ZHTN0zVp6Tc3EHhWoU+H3jyB3UauI8Cg=;
 b=l2N48tPJPzc0ToHPgbhMM3JiGjzUi2ODEspRu5DgxnsXtBkKXLKJhh3pvZF7mVu3K2
 in0TXBfNe1lQRMOTqJd7NBW02SdkyGRfNfHwsfdvoRy81ixjmWZjLkaxoscY69czBLZr
 ld+l1cXbqvzEjhSB/LMM3XEkou4DIobR88XRkvDvxlU4F/PnAFHziSi0nv5BRiRhPg3R
 UVRo8fEn4Rpdd9SwMZi68iUmhNss99e/VJH2/JTh3oMtdFR1RskxHxHKZMvaow5EcVTh
 JJYtRSwRgEiGJFmd2HrZpR1kd8wYHU9zoclRwzuTR6RiB8jjRb75GTwe96RumKxzlBV0
 +q3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767018085; x=1767622885;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=IahdbE037M2ZHTN0zVp6Tc3EHhWoU+H3jyB3UauI8Cg=;
 b=GZlbjf1I8gd2Qf6btYv2mRI/8KrAqkSKIJVZcvLjkIv7tn4Ciea6sY8JWHX+djWiDI
 BwBceHbkUhAS2rzuYFnRBzdJJM6GgJDQC0FsH/XKgrYbkHZ/jWz2rEMIpBKHe8HHF2EP
 ApywtOPPI9EWKPzLqYZP/LQ9WKIHX2RB5OSkVwr8JfjAUPChvmHfnTYZDg+ECU2fwhlO
 dJQGSmexuJsh7EqXZvrdBJGFVNAnAcfjHuFhXOztJu7+gUWBUq3fSxmcdGnBW44ss6hL
 89dGIORJv32YJO5YrKa/tcuQ3o3QopVq/RXn0IfI0uG0u5tsXx8Euqk/kUPJdgVHS18w
 GKxg==
X-Gm-Message-State: AOJu0YwYMtsISxyZhomavhelWxBnUObFxPM2Xbh45l1k9W/UPtDcka3/
 K9wmyVHk6IbSzy6Bjdm7VqNI4MGzCvypac4eUCWWO9+uXpscOB6dmmqCLU+PS9rEvEBJJl4fxj9
 VKvdjAOX5Mr88349q3cOr6BZG4fCNEZawiZ3pMn10UHzho6tKFVL97WeLbQ==
X-Gm-Gg: AY/fxX6wG9vMndEF6cnTyCbvz74FKfsGDjoNosua18UPwhkvRpzV7gt/BdotgmbyFmh
 Qy0+GXTIsnP+S6rK62GPUgyjP/lEEAMG33FoRrmKj6HTZxUNB1jslGZAsycwV8FAbUltHhBXK1D
 UZkCxBqlEr7r0beXSBCOdKnxaGAvFDNGry5Y5/3K+hszxEKwsNKmqoPg+ZVHa/c0aJs1os9CJNs
 foW9nO8QI85CiUZCvULV64Cx5Yl638ozf0o/nEEvsdUekn1jnuEI0avG+PeBT0aAKwH8VU6QKlS
 GXGoPy+gv2USkkx9b1a16QcadsMO2uZbDFY=
X-Google-Smtp-Source: AGHT+IGmYUMD8JBVD2s03alTKcKMnvG7jyDRCAr1VxCGHM5bw0uAGf9oLfxnzs2uJq9fIViASEyD323Aq1ASc9VYxmA=
X-Received: by 2002:a2e:be28:0:b0:380:989:f5fb with SMTP id
 38308e7fff4ca-381212fd26amr102017611fa.0.1767016726010; Mon, 29 Dec 2025
 05:58:46 -0800 (PST)
MIME-Version: 1.0
References: <CACosJgzCym0fGOh4_itgnV5Dk+vOqk=Xy+dtvbmCGcpKCFY5XA@mail.gmail.com>
 <aVHKTMfSgFnBzkyA@mail.minyard.net>
 <CACosJgxWRTCATq=8kd7s2JSOjn1qL5B4KFYtzPAmVj55Xc689w@mail.gmail.com>
In-Reply-To: <CACosJgxWRTCATq=8kd7s2JSOjn1qL5B4KFYtzPAmVj55Xc689w@mail.gmail.com>
From: Corey Minyard <corey@minyard.net>
Date: Mon, 29 Dec 2025 07:58:34 -0600
X-Gm-Features: AQt7F2qygWH4Bto4ae7DcVmADc_OZEnSC8X7bRbPx1qJaR_K6M1Tr2QKm-xok6s
Message-ID: <CAB9gMfpx4T3Z3PbG8J0vS8EAaBfhhkekvVJ5SQA-gV4X2VqQ1Q@mail.gmail.com>
To: Michal Berger <michallinuxstuff@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Dec 29,
 2025 at 6:05 AM Michal Berger <michallinuxstuff@gmail.com>
 wrote: > >First your mailer is munging up the patches pretty badly. I have
 to > >hand apply them, which is a big pain. > > Ah, apologies, I didn't check
 the formatting before I sent these > emails (was rushi [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.46 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1vaE7s-0006Vh-Ul
Subject: Re: [Openipmi-developer] [PATCH] lanserv/bmc_sensor: Adjust
 Generator ID
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
Content-Type: multipart/mixed; boundary="===============3933511063128988792=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

--===============3933511063128988792==
Content-Type: multipart/alternative; boundary="0000000000004428d2064717a4c5"

--0000000000004428d2064717a4c5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 29, 2025 at 6:05=E2=80=AFAM Michal Berger <michallinuxstuff@gma=
il.com>
wrote:

> >First your mailer is munging up the patches pretty badly.  I have to
> >hand apply them, which is a big pain.
>
> Ah, apologies, I didn't check the formatting before I sent these
> emails (was rushing a bit, won't happen again).
>
> > If you could check it, that would be great.
> Tested, everything seems to be working fine. That said, there's one
> tiny thing I am a bit torn about:
>
> sel_data[4] =3D msg->saddr & 0x7f;
>

> For the case where the event is not received over the system
> interface, e.g., LAN channel, the msg->saddr is set to 0x81. So the
> above
> sets the Byte 1 of the generator ID to 1. With 0x1 LAN channel, we end
> up with 0x1001 as the generator ID for that event. So that
> indicates the generator holds an actual SWID of value 0x0. If we
> cross-reference that with the Table 5-4, System Software IDs it
> essentially says "BIOS generated this message" which sounds a bit odd.
> Initially, having 0x1000 made somewhat more sense to me
> as the way I read this was "no swid, the i2c address is 0h but the
> channel number is !=3D 0h - this is definitely not a system software
> event, but one which still fits under IPMB messaging umbrella (i.e.
> LAN, as per Table 29-4, Platform Event (Event Message) Command)".
>
> That said, I don't feel very strongly about it, I am just more curious
> what the "right" interpretation of the spec should be here.
> Regardless, code LGTM. :)
>

I debated about this a little, and I didn't consider LAN channels
properly.  And the spec leaves a lot of room for creative interpretation.

But I did mess this up.  First, it's the low bit, not the high bit. Second,
the source address on a LAN channel comes from the message header, like an
IPMB message.  But it can be a SWID, so masking the top bit is wrong.  I'll
remove that and setting the high bit on system interfaces.

Thanks,

-corey


> Regards,
> Michal
>
> pon., 29 gru 2025 o 01:24 Corey Minyard <corey@minyard.net> napisa=C5=82(=
a):
> >
> > On Sun, Dec 28, 2025 at 10:38:03PM +0100, Michal Berger wrote:
> > > Right now channel number is being unconditionally included in the
> > > Generator ID field. However, as per the SEL Event Records it should
> > > remain 0h depending on what medium/interface the event msg is
> > > received over.
> >
> > You are correct, there was a lot to be desired in this funciton.
> >
> > There were, unfortunately, a lot of issues with this patch.
> >
> > First your mailer is munging up the patches pretty badly.  I have to
> > hand apply them, which is a big pain.
> >
> > On the chagne itself, you still weren't handling all cases for the
> > address in the SEL Event Records.
> >
> > And for an IPMB messages, the wrong data was copied and it was indexing
> > beyond the end of the message data when filling out the data.
> >
> > I've heavily modified the patch and pushed it up.  If you could check
> > it, that would be great.
> >
> > Thanks,
> >
> > -corey
> >
> > >
> > > So have this:
> > >
> > > # ipmitool sel list
> > >  SEL has no entries
> > >  # ipmitool event 1
> > >  Sending SAMPLE event: Temperature - Upper Critical - Going High
> > >  # ipmitool sel get 0x1 | grep "Generator ID"
> > >   Generator ID          : 0041
> > >
> > > Instead of:
> > >
> > >  # ipmitool event 1
> > >  Sending SAMPLE event: Temperature - Upper Critical - Going High
> > >  # ipmitool sel get 0x2 | grep "Generator ID"
> > >   Generator ID          : f041
> > >
> > > As we are at it adjust the msg length of the platform event - as per
> the
> > > Table 29-4, Platform Event (Event Message) Command, the 8 bytes is
> > > a msg length dedicated for the System Interface which must include
> > > the Generator ID. Case in point, when the event is sent over the
> > > LAN channel, ipmi_sim rejects it due to invalid length of the
> > > request (e.g. ipmitool does not include the extra software ID in the
> > > event data hence sending only 7 bytes):
> > >
> > >  $ ipmitool -Ilanplus -Hlocalhost -p4242 -UXXXXX -PXXXXX event 1
> > >  Sending SAMPLE event: Temperature - Upper Critical - Going High
> > >  Platform Event Message command failed: Request data length invalid
> > >
> > > Signed-off-by: Michal Berger <michallinuxstuff@gmail.com>
> > > ---
> > > lanserv/bmc_sensor.c | 22 +++++++++++++++++++++-
> > > 1 file changed, 21 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/lanserv/bmc_sensor.c b/lanserv/bmc_sensor.c
> > > index be6c537f..cc21bf9c 100644
> > > --- a/lanserv/bmc_sensor.c
> > > +++ b/lanserv/bmc_sensor.c
> > > @@ -58,6 +58,7 @@
> > > #include <sys/stat.h>
> > > #include <fcntl.h>
> > >
> > > +#include <OpenIPMI/ipmi_mc.h>
> > > #include <OpenIPMI/ipmi_err.h>
> > > #include <OpenIPMI/ipmi_msgbits.h>
> > > #include <OpenIPMI/ipmi_bits.h>
> > > @@ -113,16 +114,35 @@ handle_platform_event(lmc_data_t    *mc,
> > >                      void          *cb_data)
> > > {
> > >     unsigned char sel_data[13];
> > > +    uint8_t msg_length =3D 7; // IPMB MESSAGING
> > >
> > > -    if (check_msg_length(msg, 8, rdata, rdata_len))
> > > +    if (msg->orig_channel->channel_num =3D=3D 15 ||
> > > +               msg->orig_channel->medium_type =3D=3D
> IPMI_CHANNEL_MEDIUM_SYS_INTF)
> > > +       msg_length =3D 8; // SYSTEM INTERFACE MESSAGING
> > > +
> > > +    if (check_msg_length(msg, msg_length, rdata, rdata_len))
> > >        return;
> > >
> > >     sel_data[0] =3D 0;
> > >     sel_data[1] =3D 0;
> > >     sel_data[2] =3D 0;
> > >     sel_data[3] =3D 0;
> > > +    /*
> > > +       From Table 32-1, SEL Event Records:
> > > +         Byte 1
> > > +           [7:1] - 7-bit I2C . Slave Address, or 7-bit system
> software ID
> > > +           [0] 0b =3D ID is IPMB Slave Address
> > > +               1b =3D system software ID
> > > +         Byte 2
> > > +          [7:4] - Channel number. Channel that event message was
> > > received over. 0h if the
> > > +                  event message was received via the system
> > > interface, primary IPMB, or
> > > +                  internally generated by the BMC.
> > > +    */
> > >     sel_data[4] =3D msg->data[0];
> > >     sel_data[5] =3D msg->orig_channel->channel_num << 4;
> > > +    if (msg->orig_channel->channel_num =3D=3D 15 ||
> > > +               msg->orig_channel->medium_type =3D=3D
> IPMI_CHANNEL_MEDIUM_SYS_INTF)
> > > +       sel_data[5] =3D 0;
> > >     sel_data[6] =3D msg->data[1];
> > >     sel_data[7] =3D msg->data[2];
> > >     sel_data[8] =3D msg->data[3];
> > > --
> > > 2.43.0
> > >
> > >
> > > _______________________________________________
> > > Openipmi-developer mailing list
> > > Openipmi-developer@lists.sourceforge.net
> > > https://lists.sourceforge.net/lists/listinfo/openipmi-developer
>

--0000000000004428d2064717a4c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=
=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr=
">On Mon, Dec 29, 2025 at 6:05=E2=80=AFAM Michal Berger &lt;<a href=3D"mail=
to:michallinuxstuff@gmail.com">michallinuxstuff@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">&gt;First your mai=
ler is munging up the patches pretty badly.=C2=A0 I have to<br>
&gt;hand apply them, which is a big pain.<br>
<br>
Ah, apologies, I didn&#39;t check the formatting before I sent these<br>
emails (was rushing a bit, won&#39;t happen again).<br>
<br>
&gt; If you could check it, that would be great.<br>
Tested, everything seems to be working fine. That said, there&#39;s one<br>
tiny thing I am a bit torn about:<br>
<br>
sel_data[4] =3D msg-&gt;saddr &amp; 0x7f;<br></blockquote><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
<br>
For the case where the event is not received over the system<br>
interface, e.g., LAN channel, the msg-&gt;saddr is set to 0x81. So the<br>
above<br>
sets the Byte 1 of the generator ID to 1. With 0x1 LAN channel, we end<br>
up with 0x1001 as the generator ID for that event. So that<br>
indicates the generator holds an actual SWID of value 0x0. If we<br>
cross-reference that with the Table 5-4, System Software IDs it<br>
essentially says &quot;BIOS generated this message&quot; which sounds a bit=
 odd.<br>
Initially, having 0x1000 made somewhat more sense to me<br>
as the way I read this was &quot;no swid, the i2c address is 0h but the<br>
channel number is !=3D 0h - this is definitely not a system software<br>
event, but one which still fits under IPMB messaging umbrella (i.e.<br>
LAN, as per Table 29-4, Platform Event (Event Message) Command)&quot;.<br>
<br>
That said, I don&#39;t feel very strongly about it, I am just more curious<=
br>
what the &quot;right&quot; interpretation of the spec should be here.<br>
Regardless, code LGTM. :)<br></blockquote><div><br></div><div>I debated abo=
ut this a little, and I didn&#39;t consider LAN channels properly.=C2=A0 An=
d the spec leaves a lot of room for creative interpretation.</div><div><br>=
</div><div>But I did mess this up.=C2=A0 First, it&#39;s the low bit, not t=
he high bit. Second, the source address on a LAN channel comes from the mes=
sage header, like an IPMB message.=C2=A0 But it can be a SWID, so masking t=
he top bit is wrong.=C2=A0 I&#39;ll remove that and setting the high bit on=
 system interfaces.</div><br><div>Thanks,</div><div><br></div><div>-corey</=
div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
Regards,<br>
Michal<br>
<br>
pon., 29 gru 2025 o 01:24 Corey Minyard &lt;<a href=3D"mailto:corey@minyard=
.net" target=3D"_blank">corey@minyard.net</a>&gt; napisa=C5=82(a):<br>
&gt;<br>
&gt; On Sun, Dec 28, 2025 at 10:38:03PM +0100, Michal Berger wrote:<br>
&gt; &gt; Right now channel number is being unconditionally included in the=
<br>
&gt; &gt; Generator ID field. However, as per the SEL Event Records it shou=
ld<br>
&gt; &gt; remain 0h depending on what medium/interface the event msg is<br>
&gt; &gt; received over.<br>
&gt;<br>
&gt; You are correct, there was a lot to be desired in this funciton.<br>
&gt;<br>
&gt; There were, unfortunately, a lot of issues with this patch.<br>
&gt;<br>
&gt; First your mailer is munging up the patches pretty badly.=C2=A0 I have=
 to<br>
&gt; hand apply them, which is a big pain.<br>
&gt;<br>
&gt; On the chagne itself, you still weren&#39;t handling all cases for the=
<br>
&gt; address in the SEL Event Records.<br>
&gt;<br>
&gt; And for an IPMB messages, the wrong data was copied and it was indexin=
g<br>
&gt; beyond the end of the message data when filling out the data.<br>
&gt;<br>
&gt; I&#39;ve heavily modified the patch and pushed it up.=C2=A0 If you cou=
ld check<br>
&gt; it, that would be great.<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; -corey<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt; So have this:<br>
&gt; &gt;<br>
&gt; &gt; # ipmitool sel list<br>
&gt; &gt;=C2=A0 SEL has no entries<br>
&gt; &gt;=C2=A0 # ipmitool event 1<br>
&gt; &gt;=C2=A0 Sending SAMPLE event: Temperature - Upper Critical - Going =
High<br>
&gt; &gt;=C2=A0 # ipmitool sel get 0x1 | grep &quot;Generator ID&quot;<br>
&gt; &gt;=C2=A0 =C2=A0Generator ID=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : 0041=
<br>
&gt; &gt;<br>
&gt; &gt; Instead of:<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 # ipmitool event 1<br>
&gt; &gt;=C2=A0 Sending SAMPLE event: Temperature - Upper Critical - Going =
High<br>
&gt; &gt;=C2=A0 # ipmitool sel get 0x2 | grep &quot;Generator ID&quot;<br>
&gt; &gt;=C2=A0 =C2=A0Generator ID=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : f041=
<br>
&gt; &gt;<br>
&gt; &gt; As we are at it adjust the msg length of the platform event - as =
per the<br>
&gt; &gt; Table 29-4, Platform Event (Event Message) Command, the 8 bytes i=
s<br>
&gt; &gt; a msg length dedicated for the System Interface which must includ=
e<br>
&gt; &gt; the Generator ID. Case in point, when the event is sent over the<=
br>
&gt; &gt; LAN channel, ipmi_sim rejects it due to invalid length of the<br>
&gt; &gt; request (e.g. ipmitool does not include the extra software ID in =
the<br>
&gt; &gt; event data hence sending only 7 bytes):<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 $ ipmitool -Ilanplus -Hlocalhost -p4242 -UXXXXX -PXXXXX eve=
nt 1<br>
&gt; &gt;=C2=A0 Sending SAMPLE event: Temperature - Upper Critical - Going =
High<br>
&gt; &gt;=C2=A0 Platform Event Message command failed: Request data length =
invalid<br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: Michal Berger &lt;<a href=3D"mailto:michallinuxstu=
ff@gmail.com" target=3D"_blank">michallinuxstuff@gmail.com</a>&gt;<br>
&gt; &gt; ---<br>
&gt; &gt; lanserv/bmc_sensor.c | 22 +++++++++++++++++++++-<br>
&gt; &gt; 1 file changed, 21 insertions(+), 1 deletion(-)<br>
&gt; &gt;<br>
&gt; &gt; diff --git a/lanserv/bmc_sensor.c b/lanserv/bmc_sensor.c<br>
&gt; &gt; index be6c537f..cc21bf9c 100644<br>
&gt; &gt; --- a/lanserv/bmc_sensor.c<br>
&gt; &gt; +++ b/lanserv/bmc_sensor.c<br>
&gt; &gt; @@ -58,6 +58,7 @@<br>
&gt; &gt; #include &lt;sys/stat.h&gt;<br>
&gt; &gt; #include &lt;fcntl.h&gt;<br>
&gt; &gt;<br>
&gt; &gt; +#include &lt;OpenIPMI/ipmi_mc.h&gt;<br>
&gt; &gt; #include &lt;OpenIPMI/ipmi_err.h&gt;<br>
&gt; &gt; #include &lt;OpenIPMI/ipmi_msgbits.h&gt;<br>
&gt; &gt; #include &lt;OpenIPMI/ipmi_bits.h&gt;<br>
&gt; &gt; @@ -113,16 +114,35 @@ handle_platform_event(lmc_data_t=C2=A0 =C2=
=A0 *mc,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 void=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *cb_data)<br>
&gt; &gt; {<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0unsigned char sel_data[13];<br>
&gt; &gt; +=C2=A0 =C2=A0 uint8_t msg_length =3D 7; // IPMB MESSAGING<br>
&gt; &gt;<br>
&gt; &gt; -=C2=A0 =C2=A0 if (check_msg_length(msg, 8, rdata, rdata_len))<br=
>
&gt; &gt; +=C2=A0 =C2=A0 if (msg-&gt;orig_channel-&gt;channel_num =3D=3D 15=
 ||<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0msg-&gt;o=
rig_channel-&gt;medium_type =3D=3D IPMI_CHANNEL_MEDIUM_SYS_INTF)<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0msg_length =3D 8; // SYSTEM INTERFACE=
 MESSAGING<br>
&gt; &gt; +<br>
&gt; &gt; +=C2=A0 =C2=A0 if (check_msg_length(msg, msg_length, rdata, rdata=
_len))<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 return;<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0sel_data[0] =3D 0;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0sel_data[1] =3D 0;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0sel_data[2] =3D 0;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0sel_data[3] =3D 0;<br>
&gt; &gt; +=C2=A0 =C2=A0 /*<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0From Table 32-1, SEL Event Records:<b=
r>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Byte 1<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[7:1] - 7-bit I2C . Sla=
ve Address, or 7-bit system software ID<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[0] 0b =3D ID is IPMB S=
lave Address<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01b =3D sy=
stem software ID<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Byte 2<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [7:4] - Channel number. Chann=
el that event message was<br>
&gt; &gt; received over. 0h if the<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 e=
vent message was received via the system<br>
&gt; &gt; interface, primary IPMB, or<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 i=
nternally generated by the BMC.<br>
&gt; &gt; +=C2=A0 =C2=A0 */<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0sel_data[4] =3D msg-&gt;data[0];<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0sel_data[5] =3D msg-&gt;orig_channel-&gt;chann=
el_num &lt;&lt; 4;<br>
&gt; &gt; +=C2=A0 =C2=A0 if (msg-&gt;orig_channel-&gt;channel_num =3D=3D 15=
 ||<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0msg-&gt;o=
rig_channel-&gt;medium_type =3D=3D IPMI_CHANNEL_MEDIUM_SYS_INTF)<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0sel_data[5] =3D 0;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0sel_data[6] =3D msg-&gt;data[1];<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0sel_data[7] =3D msg-&gt;data[2];<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0sel_data[8] =3D msg-&gt;data[3];<br>
&gt; &gt; --<br>
&gt; &gt; 2.43.0<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; Openipmi-developer mailing list<br>
&gt; &gt; <a href=3D"mailto:Openipmi-developer@lists.sourceforge.net" targe=
t=3D"_blank">Openipmi-developer@lists.sourceforge.net</a><br>
&gt; &gt; <a href=3D"https://lists.sourceforge.net/lists/listinfo/openipmi-=
developer" rel=3D"noreferrer" target=3D"_blank">https://lists.sourceforge.n=
et/lists/listinfo/openipmi-developer</a><br>
</blockquote></div></div></div>

--0000000000004428d2064717a4c5--


--===============3933511063128988792==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3933511063128988792==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============3933511063128988792==--

