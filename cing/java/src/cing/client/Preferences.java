package cing.client;

import com.google.gwt.user.client.ui.ChangeListener;
import com.google.gwt.user.client.ui.CheckBox;
import com.google.gwt.user.client.ui.ClickListener;
import com.google.gwt.user.client.ui.DecoratorPanel;
import com.google.gwt.user.client.ui.FlexTable;
import com.google.gwt.user.client.ui.Label;
import com.google.gwt.user.client.ui.ListBox;
import com.google.gwt.user.client.ui.RichTextArea;
import com.google.gwt.user.client.ui.VerticalPanel;
import com.google.gwt.user.client.ui.Widget;

public class Preferences extends iCingView {

	DecoratorPanel decPanel = new DecoratorPanel();
	iCingConstants c = iCing.c;	
    final static RichTextArea statusArea = iCing.statusArea;

	int i = 0;
	final int optionVerbosityIdx = i++;
	final int optionSoundIdx = i++;
    
	public Preferences() {
		final VerticalPanel verticalPanelTop = new VerticalPanel();
		initWidget(verticalPanelTop);

		final Label html_1 = new Label( c.Preferences() );
		html_1.setStylePrimaryName("h1");
		verticalPanelTop.add(html_1);		
		verticalPanelTop.add(decPanel);		
		final VerticalPanel verticalPanel = new VerticalPanel();
		decPanel.add(verticalPanel);
		final FlexTable flexTable = new FlexTable();
		verticalPanel.add(flexTable);
		flexTable.setCellSpacing(5);
		flexTable.setCellPadding(5);

		final ListBox listBox = new ListBox();
		listBox.addItem(c.Nothing(),"0");
		listBox.addItem(c.Error(),"1");
		listBox.addItem(c.Warning(),"2");
		listBox.addItem(c.Output(),"3");
		listBox.addItem(c.Detail(),"4");		
		listBox.addItem(c.Debug(),"5"); // give up extra space between 4 and 9 for coding convenience here.

		listBox.setVisibleItemCount(1);
//		flexTable.setWidget(0, 1, listBox);
		listBox.addChangeListener(new ChangeListener() {
			public void onChange(final Widget sender) {
				General.verbosity = Integer.parseInt( listBox.getValue( listBox.getSelectedIndex() ));
				General.showOutput("verbosity now: " + General.verbosityDebug );
				boolean visibilityStatusArea = General.verbosity == General.verbosityDebug;
				General.showOutput("visibilityStatusArea: " + visibilityStatusArea );
				if ( statusArea == null ) {
					General.showOutput("in Preferences: statusArea == null");
					return;
				}
				statusArea.setVisible( visibilityStatusArea );
			}
		});
		listBox.setSelectedIndex(General.verbosityOutput);
		flexTable.setWidget(optionVerbosityIdx, 1, listBox);
		
		
		final Label verbosityLabel = new Label(c.Verbosity());
		flexTable.setWidget(optionVerbosityIdx, 0, verbosityLabel);

		final CheckBox soundCheckBox = new CheckBox();
		flexTable.setWidget(optionSoundIdx, 0, soundCheckBox);
		soundCheckBox.addClickListener(new ClickListener() {
			public void onClick(final Widget sender) {
				iCing.soundOn = soundCheckBox.isChecked();
			}
		});
		soundCheckBox.setChecked(true);
		soundCheckBox.setText(c.Sound());
	}
}
